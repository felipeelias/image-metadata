module ImagesHelper
  def link_to_filter(filter_name)
    link_to filter_name.titleize, :params => { :filter => filter_name }
  end
end
