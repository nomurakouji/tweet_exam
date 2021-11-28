class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: "つぶやきました！"
    else
      render :new
    end
  end
  def edit
    @blog = Post.find(params[:id])
  end
  private
  def post_params
    params.require(:post).permit(:content)
  end
end
