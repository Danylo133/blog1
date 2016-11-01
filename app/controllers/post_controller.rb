class PostController < ApplicationController
  def list
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @categories = Categorie.all
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to :action => 'list'
    else
      @categories = Categorie.all
      render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Categorie.all
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_param)
      redirect_to :action => 'show', :id => @book
    else
      @categories = Categorie.all
      render :action => 'edit'
          end
  end

  def delete
    Post.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def show_categories
    @categorie = Categorie.find(params[:id])

  end

 private

  def post_params
    params.require(:post).permit(:title, :body, :categorie_id)
  end
end
