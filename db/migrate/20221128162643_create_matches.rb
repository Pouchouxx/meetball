class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.string :address
      t.date :date
      t.string :comment
      t.integer :level_rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
