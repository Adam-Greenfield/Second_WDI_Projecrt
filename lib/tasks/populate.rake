namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    500.times do
      User.create

  end
end