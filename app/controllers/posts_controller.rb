class PostsController < ApplicationController
  def index
    @publishedPosts = Post.where(status:"published")
    @unpublishedPosts = Post.where(status:"unpublished")
  end

  def destroy
    binding.pry
    #loop around to destroy all the bits related to the post

    @bitsForThePost = Bit.where(post_id:params[:id])
    @bitsForThePost.each do |b|
      b.destroy
    end
    binding.pry


    @post = Post.find(params[:id])
    @post.destroy
    head :no_content

  end
end
