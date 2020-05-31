class CommentsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.js { render :index }
      else
        flash.now[:notice] = '投稿できませんでした。'
        format.html { redirect_to movie_path(@movie) }
      end
    end
  end

  def edit; end

  def update; end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy!
  end
  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:movie_id, :content,)
  end
end
