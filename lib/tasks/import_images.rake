desc "Importa as imagens"
task :importa => :environment do
  imagens = Dir[RAILS_ROOT + "/public/images/icones/*.png"]
  puts "Encontradas #{imagens.size}!"
  
  imagens.each do |imagem|
    puts Image.find_or_create_by_image(File.basename(imagem)).inspect
  end
  
  puts Image.all.size
end