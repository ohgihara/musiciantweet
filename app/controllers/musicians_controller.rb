class MusiciansController < ApplicationController
  before_action :set_musician, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @musicians = Musician.includes(:user).order("musician_era_id ASC")
  end

  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.new(musician_params)
    if @musician.save
    else
      render :new
    end
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
    @comment = Comment.new
    @comments = @musician.comments.includes(:user)
  end

  private
  def musician_params
    params.require(:musician).permit(:musician_name, :musician_view, :musician_song, :date_of_birth, :image, :musician_era_id).merge(user_id: current_user.id)
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
