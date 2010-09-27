class TagsController < ApplicationController
  def index
    @tags = Tag.starting_with(params[:q])
  end
end