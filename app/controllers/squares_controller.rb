class SquaresController < ApplicationController
  def index
    @squares = Square.all

    @squares.update_all(has_knight: false)

    return if params[:location].blank?

    binding.break
    @located_square = Square.find_by(x: params[:location][:x], y: params[:location][:y])
    @located_square.update!(has_knight: true)
  end

  def show
    @square = Square.find(params[:id])
  end
  #
  # private
  #
  # def location_params
  #   params.permit(:location).permit([:x, :y])
  # end
end
