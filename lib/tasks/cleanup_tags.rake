require 'pp'

namespace :clean_db do
  desc "cleanup unassociated tags"
  task :tags => :environment do
    tags = TagFinder.without_association
    p Tag.destroy(tags) if !tags.empty?
  end
end
