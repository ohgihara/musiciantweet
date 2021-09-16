class MusiciansController < ApplicationController
  before_action :set_musician, only: [:edit, :show]

  def index
    @musicians = Musician.all
  end

  def new
    @musician = Musician.new
  end

  def create
    Musician.create(musician_params)
  end

  def destroy
    musician = Musician.find(params[:id])
    musician.destroy
  end

  def edit
  end

  def update
    musician = Musician.find(params[:id])
    musician.update(musician_params)
  end

  def show
  end

  private
  def musician_params
    params.require(:musician).permit(:musician_name, :musician_view, :musician_song,:date_of_birth,:image)
  end

  def set_musician
    @musician = Musician.find(params[:id])
  end

end
