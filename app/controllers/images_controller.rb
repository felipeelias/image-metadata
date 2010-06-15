class ImagesController < ApplicationController
  def edit
    @image = Image.find(params[:id])
  end

  def update
  end

end
