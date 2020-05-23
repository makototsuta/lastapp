class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        format.html { redirect_to movie_path(@movie), notice: '投稿できませんでした...' }
      end
    end
  end
  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:movie_id, :content,)
  end
end
