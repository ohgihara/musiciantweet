class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/musicians/#{comment.musician.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, musician_id: params[:musician_id])
  end
end
