class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end


  def new
    @post = Post.new
  end

  def create
      @post = Post.create(author_params)
      if @post.valid?
      redirect_to "/posts"
    else
      flash[:errors] = @post.errors.full_messages
    redirect_to "/posts/new"
    end
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # binding.pry
    @post.update(post_params)
    if @post.valid?
    # @post.save
    redirect_to post_path(@post)
    else
      flash[:errors] = @post.errors.full_messages
        render :edit
      end
    end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
