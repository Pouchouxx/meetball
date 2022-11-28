class CreateParticipations < ActiveRecord::Migration[7.0]
  def change
    create_table :participations do |t|
      t.boolean :mvp, default: false
      t.references :user, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.timestamps
    end
  end
end
