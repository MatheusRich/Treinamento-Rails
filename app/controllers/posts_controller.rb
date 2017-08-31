class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def index
  end

  def create
    @post = Post.new
    if @post.save
      flash[:success] = "Poxtô!"
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def show
  end
end
