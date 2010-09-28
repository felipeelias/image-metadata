module ImagesHelper
  def link_to_filter(filter_name)
    link_to t(filter_name).titleize, :params => { :filter => filter_name }
  end
end
