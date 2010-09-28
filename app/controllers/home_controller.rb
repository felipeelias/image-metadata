class HomeController < ApplicationController
  before_filter :load_untagged_images
  
  def index
  end
  
  def search
    @images = Image.tagged_with(params[:search]).paginate(:page => params[:page]) if !params[:search].blank?
  end
  
  def set_locale
    session[:locale] = params[:locale]
    redirect_to "/"
  end

  protected
  
  def load_untagged_images
    @untagged_images = Image.not_tagged.size
  end
end
