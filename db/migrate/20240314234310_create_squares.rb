class CreateSquares < ActiveRecord::Migration[7.1]
  def change
    create_table :squares do |t|
      t.string :x
      t.string :y

      t.timestamps
    end
  end
end
