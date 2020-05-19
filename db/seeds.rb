puts 'Cleaning database...'

Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'

category = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
rue = ['rue', 'avenue', 'square', 'impasse de', 'boulevard' ]

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: "#{rand(1..60)} #{rue.sample} #{Faker::FunnyName.name}, Paris",
    phone_number: "01#{Faker::Company.czech_organisation_number}",
    category: category.sample
  )
end

puts 'Creating reviews...'

Restaurant.all.each do |restaurant|
  rand(0..10).times do
    restaurant.reviews.build(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
    ).save
  end
end

puts 'Done!'
