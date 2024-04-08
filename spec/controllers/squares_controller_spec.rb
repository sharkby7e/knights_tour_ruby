require 'rails_helper'

RSpec.describe SquaresController, type: :request do
  describe '#index' do
    it 'works' do
      get(squares_path)
      expect(response).to(be_successful)
    end
  end
end
