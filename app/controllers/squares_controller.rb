class SquaresController < ApplicationController
  def index
    @squares = Square.all
    @squares.update_all(has_knight: false)

    @new_game = true
    return reset_game if params[:location].blank?

    @new_game = false
    @located_square = Square.find_by(x: params[:location][:x], y: params[:location][:y])
    @located_square.update!(has_knight: true)
    @located_square.update!(has_been_visited: true)

    legal_moves = MoveFinder.new(square: @located_square).legal_moves

    @legal_squares = legal_moves.map do |move|
      Square.find_by(x: move[0], y: move[1])
    end

    @legal_squares.reject!(&:has_been_visited)
    @visited_squares = @squares.where(has_been_visited: true).count

    return unless @legal_squares.blank?

    @fail_state = true
  end

  def show
    @square = Square.find(params[:id])
  end

  private

  def reset_game
    Square.update_all(has_been_visited: false)
  end
  # def location_params
  #   params.permit(:location).permit([:x, :y])
  # end
end
