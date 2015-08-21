  desc 'loads environment'    
  task :environment do
    ENV["PLAYLISTER_ENV"] ||= "development"
    require_relative 'config/environment'
    # require 'logger'
    # ActiveRecord::Base.logger = Logger.new(STDOUT)
  end

  desc 'starts console'
  task :console => :environment do
    Pry.start
  end

namespace :db do
  # desc allows you to do 'rake -T' in terminal for list of tasks
  # available
  desc 'migrates tables' 
  task :migrate => :environment do
    migrate_db
  end

  desc 'drops tables in database'
  task :drop => :environment do 
    drop_db
  end

  desc 'seeds the database'
  task :seed => :environment do
    seed_db
  end
end
  

