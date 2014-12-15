class PostsController < ApplicationController
  def index
    @publishedPosts = Post.where(status:"published")
    @unpublishedPosts = Post.where(status:"unpublished")
  end

  def destroy

    @bitsForThePost = Bit.where(post_id:params[:id])
    @bitsForThePost.each do |b|
      b.destroy
    end
    @post = Post.find(params[:id])
    @post.destroy
    head :no_content
  end

  def publish
    @post = Post.find(params[:id])
    if @post.status == "published"
      @post.update(status: "unpublished")
    else
      @post.update(status: "published")
    end
    head :no_content
  end
end
