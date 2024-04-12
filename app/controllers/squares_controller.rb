class SquaresController < ApplicationController
  def index
    @squares = Square.all

    @squares.update_all(has_knight: false)

    return if params[:location].blank?

    @located_square = Square.find_by(x: params[:location][:x], y: params[:location][:y])
    @located_square.update!(has_knight: true)
    @located_square.update!(has_been_visited: true)

    legal_moves = MoveFinder.new(square: @located_square).legal_moves

    @legal_squares = legal_moves.map do |move|
      Square.find_by(x: move[0], y: move[1])
    end

    @legal_squares = @legal_squares.reject(&:has_been_visited)
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
