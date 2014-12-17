class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @publishedPosts = Post.where(user_id: params[:id]).where(status:"published")
  end
end
