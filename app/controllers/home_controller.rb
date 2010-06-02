class HomeController < ApplicationController
  def index
    @images = Image.all
  end
  
  def search
    @images = Image.all(:conditions => { :tags => "cat" })
  end
end
