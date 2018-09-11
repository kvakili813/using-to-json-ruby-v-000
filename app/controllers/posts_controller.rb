class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def inventory
    post = Post.find(params[:id])
    render plain: post.inventory > 0 ? true : false
  end

  def description
    post = Post.find(params[:id])
    render plain: post.description
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html {render :show}
      format.json {render json: @post.to_json(only: [:name, :description, :price, :inventory])}
    end
  end

  # def data
  #   product = Product.find(params[:id])
  #   render json: ProductSerializer.serialize(product)
  # end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
