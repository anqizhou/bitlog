class PostsController < ApplicationController
  def index
    @publishedPosts = Post.where(status:"published")
    @unpublishedPosts = Post.where(status:"unpublished")
  end
end
