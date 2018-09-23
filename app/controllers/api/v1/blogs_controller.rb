class Api::V1::BlogsController < ApplicationController



  def index
    @blogs = Blog.all
    render json: @blogs
  end

  def show
    @blog
    render json: @blog
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      render json: @blog, status: :accepted
    else
      render json: {}
    end
  end

  # def update
  #   @blog.update()
  #
  # end


 private

 def blog_params
   params.permit(:title, :content, :user_id, :date)

 end

 def find_blog
   @blog - Blog.find(params[:id])
 end

end
