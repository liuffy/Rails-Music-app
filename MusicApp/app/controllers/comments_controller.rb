class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to track_url(@comment.track)
    else
      flash.now[:errors] = @comment.errors.full_messages
      redirect_to track_url(@comment.track)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if current_user.id == @comment.user_id
      @comment.destroy!
      redirect_to track_url(@comment.track)
    else
      render text: "You don't have permission to delete this note!", status: :forbidden
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_text, :track_id)
  end
end
