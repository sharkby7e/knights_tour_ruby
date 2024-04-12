class AddHasBeenVisitedToSquares < ActiveRecord::Migration[7.1]
  def change
    add_column(:squares, :has_been_visited, :boolean, default: false)
  end
end
