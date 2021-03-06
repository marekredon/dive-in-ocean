class SpeciesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @species = Species.all
  end

  def show
    @species = Species.find(params[:id])
  end

  def species_params
    params.require(:species).permit(:name, :latin_name, :photo)
  end
end
