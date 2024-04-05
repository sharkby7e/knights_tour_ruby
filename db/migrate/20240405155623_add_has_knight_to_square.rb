class AddHasKnightToSquare < ActiveRecord::Migration[7.1]
  def change
    add_column :squares, :has_knight, :boolean, default: false
  end
end
