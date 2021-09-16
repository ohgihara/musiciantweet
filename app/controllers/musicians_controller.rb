class MusiciansController < ApplicationController
  before_action :set_musician, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @musicians = Musician.includes(:user)
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
    params.require(:musician).permit(:musician_name, :musician_view, :musician_song,:date_of_birth,:image).merge(user_id: current_user.id)
  end

  def set_musician
    @musician = Musician.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
