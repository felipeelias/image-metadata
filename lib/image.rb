class Image
  def self.all
    Dir[Rails.root + 'public/images/icones/*.png']
  end
end