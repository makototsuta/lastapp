class FavoriteMoviesController < ApplicationController
  def create
    favorite_movie = current_user.favorite_movies.create(movie_id: params[:movie_id])
    redirect_to movies_url, notice: "#{favorite_movie.movie.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    favorite_movie = current_user.favorite_movies.find_by(id: params[:id]).destroy
    redirect_to movies_url, notice: "#{favorite_movie.movie.user.name}さんのブログをお気に入り解除しました"
  end
end
