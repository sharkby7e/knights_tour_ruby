class SquaresController < ApplicationController

  def index
    @squares = Square.all
    x, y  = params[:location]
  end

  def show
    @square = Square.find(params[:id])
  end
end
