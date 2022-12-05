class Match < ApplicationRecord
  ADDRESSES = {
    '117 Rue Rambuteau, 75001 Paris' => 'https://assets.dnainfo.com/generated/photo/2012/07/1343333554.jpg/extralarge.jpg',
    '17 Rue Léopold Bellan, 75002 Paris' => 'https://www.hoopsfix.com/wp-content/uploads/2021/08/Art-Basketball-Court-London-Joseph-Grimaldi-Park.png',
    '14 Rue Michel le Comte, 75003 Paris' => 'https://eq2q3j5zm2w.exactdn.com/wp-content/uploads/2019/10/Bball-Mural4.jpg?strip=all&lossy=1&ssl=1',
    '14 Rue des Jardins Saint-Paul, 75004 Paris' => 'https://cdn.paris.fr/paris/2021/10/04/original-fbc7cfcaba364529a27cbf77d88da072.jpg',
    '39 bis Rue Poliveau, 75005 Paris' => 'https://cdn.paris.fr/paris/2022/05/17/original-b3f50de870851c42af271a6c1781543b.jpg',
    '87 Rue de Vaugirard, 75006 Paris' => 'https://cdn.paris.fr/paris/2021/10/04/original-4e0552c8ba5a5d11966b35f984412824.jpg',
    'Avenue Pierre Loti, 75007 Paris' => 'https://media.timeout.com/images/105268981/1372/1029/image.jpg',
    '7 All. Louis de Funès, 75008 Paris' => 'https://www.3dnatives.com/wp-content/uploads/2021/06/Cover_ilori.jpeg',
    '22 Rue Duperré, 75009 Paris' => 'https://static.dezeen.com/uploads/2017/06/basket-court-pigalle-studio-architecture-public-leisure-paris-france-_dezeen_hero-b.jpg',
    '116 quai de Jemmapes, 75010 Paris' => 'https://ancre-magazine.com/wp-content/uploads/2021/10/footlock-jemmapes-basket-playground-1-1000x750-1.jpeg',
    '17 Rue Boy-Zelenski, 75010 Paris' => 'https://www.insideedition.com/sites/default/files/styles/video_1920x1080/public/images/2021-10/100821_kobe_tribute_web.jpg?h=d1cb525d',
    '68 boulevard poniatowski, 75012 Paris' => 'https://cdn.paris.fr/paris/2022/06/28/original-5ccb9808907eab13658f9d298bf2d509.jpg',
    '61 boulevard Vincent Auriol, 75013 Paris' => 'https://ancre-magazine.com/wp-content/uploads/2021/06/paris-terrain-basket-dehors-outdoor-exterieur-13-eme-vincent-auriol-10.jpg',
    '101 Quai Jacques Chirac, 75015 Paris' => 'https://media.timeout.com/images/105268984/1372/1029/image.jpg',
    '2 Rue Jean Sicard, 75015 Paris' => 'https://ancre-magazine.com/wp-content/uploads/2021/10/terrain-basket-renoves-paris-2.jpg',
    '2 Rue du Commandant Guilbaud, 75016 Paris' => 'https://www.fubiz.net/wp-content/uploads/2018/03/ludwig-favre-ny-basketball-courts-08.jpg',
    '8 Avenue de la Porte de Clichy, 75017 Paris' => 'https://www.viralhoops.com/wp-content/uploads/2014/04/Quai-54-Basketball-Court.png',
    '56 Rue Aubervilliers, 75018 Paris' => "https://cdn.paris.fr/paris/2022/07/18/original-89134bebd391d9d127aaa78e13afaca7.jpg",
    '234 Boulevard de la Villette, 75019 Paris' => 'https://cdn.paris.fr/paris/2021/10/04/original-e3e0e97a473bf0d5fc43e9d17c514b36.jpg',
    '30 Rue Louis Lumière, 75020 Paris' => 'https://offloadmedia.feverup.com/lisboasecreta.co/wp-content/uploads/2019/08/16103331/BAL1_web-1024x681.jpg',
  }
  belongs_to :user
  has_many :teams, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :participations, through: :teams
  validates :date, :level_rating, presence: true
  validates :comment, presence: true, length: { in: 20..200 }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_create :prepare_teams

  CATEGORIES = ["District", "Pro A", "NBA"]

  DIFFICULTY = {
    "District"=> 1,
    "Pro A"=> 2,
    "NBA"=> 3

}

  def category
    case level_rating
    when 1
     "District"
    when 2
      "PRO A"
    when 3
      "NBA"
    else

    end
  end

  def max_per_match
    6
  end

  def percentage
    (participations.count / max_per_match.to_f)*100
  end

  def full?
    participations.count == max_per_match
  end

  def self.all_available
    all.reject(&:full?)
    # Match.all.reject { |match| match.full? }
  end

  private

  def prepare_teams
    team_one = Team.create!(match: self, name: "#{user.pseudo}'s team")
    Team.create!(match: self, name: "team 2")
    puts Team.find(team_one.id)
    Participation.create!(user: user, team_id: team_one.id)
  end
end
