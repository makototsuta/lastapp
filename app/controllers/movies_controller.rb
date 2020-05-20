class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]
#  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = current_user.movies.build(movie_params)
    if @movie.save
      redirect_to movies_path, notice: "動画を投稿しました！"
    else
      render :new
    end
  end

  def show
    @comments = @movie.comments
    @comment = @movie.comments.build
  end

  def destroy
    @movie.destroy
    redirect_to movies_path, notice:"動画を削除しました！"
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: "動画を編集しました！"
    else
      render :edit
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :content, :icon, :icon_cache, :user_id)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end

end
