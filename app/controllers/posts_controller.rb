class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.where(id: params[:id]).first

    if @post
      # nothing as we've found the post
    else
      # handle not finding post based on application logic
      flash[:error] = "I'm sorry but the post you are looking for was lost in the ether"
      redirect_to posts_path
    end
  end

  def create
    @post = Post.new(post_params)

    if @post.valid? && @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    else
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :author_id,
      :body
    )
  end
end
