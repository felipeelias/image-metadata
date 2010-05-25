class Image
  def self.all
    Dir[Rails.root + 'public/*.html', Rails.root + 'public/*.txt']
  end
end