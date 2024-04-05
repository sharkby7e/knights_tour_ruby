class SquaresController < ApplicationController
  def index
    # @located_square = Square.find_by(location_params)
    # x = location_params[:location][:x]
    # y = location_params[:location][:y]

    Square.update_all(has_knight: false)
    if params[:location].present?
      x = params[:location][:x] 
      y = params[:location][:y] 
      @located_square = Square.find_by(x: x, y: y)
      @located_square.update!(has_knight: true)
    end

    @squares = []

    Square.all.each do |square|
      @squares << square
    end
  end

  def show
    @square = Square.find(params[:id])
  end
end
