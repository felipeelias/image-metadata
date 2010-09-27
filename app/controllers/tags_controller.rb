class TagsController < ApplicationController
  def index
    @tags = Tag.named_like(params[:term])
    respond_to do |format|
      format.json { render :json => @tags.map(&:name).to_json }
    end
  end
end