class ImagesController < ApplicationController
  def index
    @images = Image.paginate(:page => params[:page], :include => :tags, :conditions => handle_conditions)
  end
  
  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update_attributes(params[:image])
    
    if request.xhr?
      render :text => @image.tag_list
    else
      redirect_to :action => "index"
    end
  end

  private
  
  def handle_conditions
    case params[:filter]
    when "tagged"
      "tags.name is not null"
    when "untagged"
      {"tags.name" => nil}
    end
  end
end
