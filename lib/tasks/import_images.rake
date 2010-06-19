namespace :importar do
  
  desc "Importa novas imagens"
  task :imagens => :environment do
    images_dir = RAILS_ROOT + "/public/images/icones/*.png"
    images = Dir[images_dir]

    puts "=> Found #{images.size} images in #{File.dirname(images_dir)}!"

    number_of_images = Image.count

    # syncs STDOUT for print
    STDOUT.sync = true
    
    new_images = images.map do |image|
      print "."
      Image.find_or_create_by_image(File.basename(image))
    end

    puts "\n=> Created #{new_images.size - number_of_images} images"
  end
  
end