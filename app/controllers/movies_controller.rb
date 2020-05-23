class MoviesController < ApplicationController
  before_action :set_movie, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

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
    if user_signed_in?
      @movie = Movie.find(params[:id])
      @comments = @movie.comments
      @comment = @movie.comments.build
      @favorite_movie = current_user.favorite_movies.find_by(movie_id: @movie.id)
    else
      @movie = Movie.find(params[:id])
      @comments = @movie.comments
      @comment = @movie.comments.build
    end
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
    begin
      @movie = current_user.movies.find(params[:id])
    rescue
      redirect_to movies_url
    end
  end

end