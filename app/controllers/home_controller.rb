class HomeController < ApplicationController
  
  #get
  def index
    #render :text => "Hello"
    redirect_to :action => :ola
  end
  
  #get
  def ola
    @tempo = Time.now
    @array = Image.all
  end 
  
end
