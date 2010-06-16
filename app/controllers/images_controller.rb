class ImagesController < ApplicationController
  def index
    @images = Image.all
  end
  
  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
  end

end
