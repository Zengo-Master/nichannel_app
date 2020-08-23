class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(name: params[:name], message: params[:message])
    redirect_to action: :index
  end
end