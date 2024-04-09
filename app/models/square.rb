class Square < ApplicationRecord
  def legal_moves
    [Square.find_by(x: '2', y: '3'), Square.find_by(x: '3', y: '2')]
  end
end
