class ChangeDateToMatches < ActiveRecord::Migration[7.0]
  def change
    change_column :matches, :date, :datetime
  end
end
