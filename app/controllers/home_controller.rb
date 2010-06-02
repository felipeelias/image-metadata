class HomeController < ApplicationController
  def index
    @images = Image.all
  end
  
  def search
    @images = Image.find_by_tags(params[:search]) if params[:search]
  end
end
