require 'rails_helper'

RSpec.describe MoveFinder, type: :helper do
  it 'initializes with a square with accessible coordinates' do
    square = create(:square)

    finder = MoveFinder.new(square:)
    expect(finder.x).to eq 1
  end
end
