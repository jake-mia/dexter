desc "This task is called by the Heroku scheduler add-on"
task :create_txt_msg => :environment do
  puts "Reviewing steps for each user and sending txts..."
  UserChallenge.create_txt_msg
  puts "Done."

# task :update_feed => :environment do
#   puts "Updating feed..."
#   NewsFeed.update
#   puts "done."
# end

end
