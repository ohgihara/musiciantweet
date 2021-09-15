class MusiciansController < ApplicationController
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

  private
  def musician_params
    params.require(:musician).permit(:musician_name, :musician_view, :musician_song,:date_of_birth,:image)
  end

end
