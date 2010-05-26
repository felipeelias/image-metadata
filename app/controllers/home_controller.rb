class HomeController < ApplicationController
  
  #FIXME: Fazer isso depois
  def index
      @images = Image.all
  end
  
end
