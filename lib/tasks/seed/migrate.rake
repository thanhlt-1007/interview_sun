namespace :seed do
  desc "Seed all data"

  task migrate: :environment do
    Rake::Task["seed:category"].invoke
    Rake::Task["seed:question"].invoke
  end
end
