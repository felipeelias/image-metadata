class ImagesController < ApplicationController
  def index
    @images = Image.paginate(:page => params[:page], :include => :tags)
  end
  
  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update_attributes(params[:image])
    
    if request.xhr?
      render :text => @image.tag_names
    else
      redirect_to :action => "index"
    end
  end

end
