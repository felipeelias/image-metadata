class HomeController < ApplicationController
  
  # TODO: trazer imagens que ainda nao foram definidas com tags
  def index
    @untagged_images = Image.not_tagged
  end
  
  # TODO: testar se o parametro é "" ou " " (vazio)
  def search
    @images = Image.tagged_with(params[:search]) if params[:search]
  end
end
