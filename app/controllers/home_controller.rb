class HomeController < ApplicationController
  def index
    #render :text => "Hello"
    redirect_to :action => :ola
  end
  
  def ola
    
    @tempo = Time.now
    
    
  end 
  
end
