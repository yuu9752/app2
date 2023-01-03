class PostImagesController < ApplicationController
  
  def new
    @post_images = PostImage.new
  end
  
  #投稿データ保存
  def create
    @post_images = PostImage.new(post_image_params)
    @post_images.user_id = current_user.id
    @post_images.save
    redirect_to post_images_path
  end
  
  def index
  end
  
  def show
  end
  
  def destroy
  end
  
  #投稿データのストロングパラメータ
  private
  
  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
