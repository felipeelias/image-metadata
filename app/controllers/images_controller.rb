class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def edit
    @image = Image.find_by_image(params[:id])
  end

  def update
    @image = Image.find_by_image(params[:id])
  end

end
