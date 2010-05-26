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
    respond_to do |wants|
      wants.html
      wants.xml { render :xml => params.to_xml }
    end
  end 
  
end
