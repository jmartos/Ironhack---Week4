class PostsController < ApplicationController

  def index
    @concert = Concert.find(params[:concert_id])
    @posts = @concert.posts.order(created_at: :desc)
  end

  def new
    @concert = Concert.find(params[:concert_id])
    @post = @concert.posts.new
  end

  def create
    @concert = Concert.find(params[:concert_id])
    @post = @concert.posts.new(
      author: params[:post][:author],
      comment: params[:post][:comment]
      )

    if @post.save
      redirect_to "/concerts/#{@concert.id}/posts"
    else 
      render "new"
    end
  end

end
