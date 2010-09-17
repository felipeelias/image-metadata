class ImagesController < ApplicationController
  def index
    @images = Image.all(:include => :tags)
  end
  
  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update_attributes(params[:image])
    
    redirect_to :action => "index"
  end

end
