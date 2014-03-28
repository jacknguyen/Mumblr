class CommentsController < ApplicationController
	before_action :set_comment, only: [:edit, :update, :destroy]

	def create
	  @comment = Comment.new(comment_params)
	  @comment.user_name = current_user.username

    if @comment.save
      redirect_to @comment.idea, notice: 'Comment was successfully created.'
    else
      render action: 'new'
    end
	end

	def update
    if @comment.update(comment_params)
      redirect_to @comment
    else
      render action: 'edit'
    end
	end

	def destroy
	  @comment.destroy
	  respond_to do |format|
	    format.html { redirect_to comments_url }
	    format.json { head :no_content }
	  end
	end

	private
	  def set_comment
	    @comment = Comment.find(params[:id])
	  end

	  def comment_params
	    params.require(:comment).permit(:user_name, :body, :idea_id)
	  end
end