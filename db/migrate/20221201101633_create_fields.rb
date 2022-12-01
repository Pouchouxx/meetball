class CreateFields < ActiveRecord::Migration[7.0]
  def change
    create_table :fields do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :match
      t.timestamps
    end
  end
end
