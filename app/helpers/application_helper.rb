module ApplicationHelper
  def home_page_link
    link_to t(:search_page), home_path
  end
  
  def will_paginate(collection, options = {})
    options.merge!({
      :previous_label => t(:previous),
      :next_label => t(:next)
    })

    super(collection, options)
  end
end
