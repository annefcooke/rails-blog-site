class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    post_params = params.require(:post).permit(:title,:body,:author)
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html{redirect_to @post, notice: 'Post saved'}
      else
        format.html{render :new}
      end
    end
    @post.save
  end

  def update
    @post = Post.find(params[:id])
    post_params = params.require(:post).permit(:title,:body,:author)
    respond_to do |format|
      if @post.update(post_params)
        format.html{redirect_to @post, notice: 'Post updated'}
      else
        format.html{render :edit}
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

end
