# frozen_string_literal: true

require 'rails_helper'

RSpec.describe KnightHelper, type: :helper do
  describe '#legal_moves' do
    it 'provides squares to move to from a given square' do
      square = create(:square)
      expect(square.x).to eq '1'
    end
  end
end
