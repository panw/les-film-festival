class FilmsController < ApplicationController
  def show
    @film = Film.find(params[:id])
  end

  private

  def film_params
    params.require(:film).permit(:category_id, :name, :image_url, :description)
  end
end
