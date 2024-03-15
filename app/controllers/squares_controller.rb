class SquaresController < ApplicationController
  def show
    @square = Square.find(params[:id])
  end
end
