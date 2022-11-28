class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
