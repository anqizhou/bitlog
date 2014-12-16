class BitsController < ApplicationController
  def new
    @bit = Bit.new
    @posts = Post.where(user: current_user).all

    # Send @posts into a dropdown list. Take the result post's id as the id of the newly created bit's post_id
    # # view:<%= select(:person, :city_id, [['Lisbon', 1], ['Madrid', 2], ...]) %>
    #http://guides.rubyonrails.org/form_helpers.html  Making Select Boxes with Ease
  end

  def create
    @bit = Bit.new(bit_params)
    if bit_params[:post_id] != ""
      @bit.post_id = bit_params[:post_id]
    else
      # Creating new post here. Remember to ask Harry if I should really tie the create post to the post controller.
      @newpost = Post.create(title:params[:post][:title], status:"unpublished", user:current_user)
      @bit.post_id = @newpost.id
    end
    @bit.save

    if params[:image] != nil
      i = Image.new
      i.file = params[:image][:file]
      i.bit_id = @bit.id
      i.save!
    end

    redirect_to posts_url
  end

  def edit
    @bit = Bit.find(params[:id])
  end

  def update
    @bit = Bit.find(params[:id])
    @bit.update(bit_params)
    binding.pry
    redirect_to posts_url
  end


  def destroy
    @bit = Bit.find(params[:id])
    @bit.destroy
    head :no_content
  end


  private
    def bit_params
      params.require(:bit).permit(:content, :post_id)
    end
end
