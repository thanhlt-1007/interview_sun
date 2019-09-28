namespace :seed do
  desc "Seed categories"

  task category: :environment do
    default_names = Settings.category.name.default
    default_names.each do |name|
      Category.create name: name, description: FFaker::Lorem.sentences.join(" ")
    end
  end
end
