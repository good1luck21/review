class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.user_workshop_id = params[:id]
    if @post.save
      redirect_to workshop_path(params[:id])
    else
      render 'workshops/show'
    end
  end

  private
    def post_params
      params.require(:post).permit(:content)
    end
end
