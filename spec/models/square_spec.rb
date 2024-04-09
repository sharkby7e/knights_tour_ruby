require 'rails_helper'

RSpec.describe Square, type: :model do
  let(:square) { create(:square) }

  describe '#legal_moves' do
    it 'returns a squares legal moves' do
      legal_square_1 = create(:square, x: '2', y: '3')
      legal_square_2 = create(:square, x: '3', y: '2')
      expect(square.legal_moves).to match_array [legal_square_1, legal_square_2]
    end
  end
end
