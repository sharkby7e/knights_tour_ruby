class ChangeSquareCoordsToInt < ActiveRecord::Migration[7.1]
  def change
    change_column :squares, :x, :integer
    change_column :squares, :y, :integer
  end
end
