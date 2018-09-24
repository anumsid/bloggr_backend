class Api::V1::CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :update]

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @blog
    render json: @blog
  end

  def created
    @comment = Comment.new(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: {errors: @comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @comment.update(comment_params)
    if @comment.save
      render json: @comment, status: :accepted
    else
      render json: {errors: @comment.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def comment_params
    params.permit(:content, :user_id)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end
end
