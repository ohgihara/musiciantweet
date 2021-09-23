class MusicTermsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit,:update,:destroy]
  before_action :set_music_term, only: [:edit]

  def index
    @music_terms = MusicTerm.includes(:user)
  end
  def new
    @music_term = MusicTerm.new
  end

  def create
    @music_term = MusicTerm.new(music_term_params)
    if @music_term.save
      redirect_to music_terms_path
    else
      render :new
    end
  end

  def destroy
    musicterm = MusicTerm.find(params[:id])
    musicterm.destroy
  end

  def edit
  end

  def update
    musicterm = MusicTerm.find(params[:id])
    musicterm.update(music_term_params)
  end

  def search
    @music_terms = MusicTerm.search(params[:keyword])
  end



  private
  def music_term_params
    params.require(:music_term).permit(:music_term,:music_term_view, :image).merge(user_id: current_user.id)
  end

  def set_music_term
    @musicterm = MusicTerm.find(params[:id])
  end

end
