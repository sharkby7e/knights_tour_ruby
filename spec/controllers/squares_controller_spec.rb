require 'rails_helper'

RSpec.describe SquaresController, type: :request do
  describe '#index' do
    it 'works' do
      get(squares_path)
      expect(response).to(be_successful)
    end

    it 'assigns the legal squares' do
      Square.create!(x: 1, y: 1)

      params = { location: { x: 1, y: 2 } }
      get(squares_path(params))

      expect(assigns[:legal_moves])
    end
  end
end
