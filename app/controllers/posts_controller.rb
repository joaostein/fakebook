class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.order('created_at DESC').all
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to @post
    else
      render action: "new"
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end
