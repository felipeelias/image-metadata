class HomeController < ApplicationController
  def index
    @images = Image.all
  end
  
  def search
    @images = Image.tagged_with(params[:search]) if params[:search]
  end
end
