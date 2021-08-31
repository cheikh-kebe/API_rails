class CommentsController < ApplicationController
  before_action :authenticate_user!


# GET /articles
  def index
    @comments = Comment.all
    render json: @comments
  end

  # GET /articles/1/comment/1
  def show
    render json: @comment
  end
end
