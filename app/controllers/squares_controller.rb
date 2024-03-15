class SquaresController < ApplicationController

  def index
    @located_square = Square.find_by(location_params)
    @squares = []
    64.times do
      @squares << Square.first
    end
  end

  def show
    @square = Square.find(params[:id])
  end

  private

  def location_params
    params.permit(:location)
  end
end
