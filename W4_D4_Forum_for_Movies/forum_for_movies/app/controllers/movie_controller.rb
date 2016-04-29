class MovieController < ApplicationController

  def index
    @movies = Movie.new
  end

  def find
    @movies = Movie.where(title: params[:movie][:title])
  end
  
  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @movie = Movie.find(params[:id])
    @post = @movie.posts.new(
      author: params[:post][:author],
      comment: params[:post][:comment]
      )
    if @post.save
      redirect_to "/movies"
    else 
      render "post"
    end
  end
end
