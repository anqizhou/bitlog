class PostsController < ApplicationController
  def index
    @publisedPosts = Post.where(status:"published")
    @unpublisedPosts = Post.where(status:"unpublished")
  end
end
