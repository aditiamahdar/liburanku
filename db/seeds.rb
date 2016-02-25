user = User.where(email: "wade.wilson@example.com").first_or_create do |user|
  user.email = "wade.wilson@example.com"
  user.first_name = "Wade"
  user.last_name = "Wilson"
  user.password = 123456
  user.remote_avatar_url = "http://lorempixel.com/400/400/people/"
end

user.save
user.confirm
user.destinations.destroy_all

20.times do
  user.destinations.create(
    name: Faker::Address.city,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    description: Faker::Lorem.paragraph(50),
    email: Faker::Internet.email,
    url: Faker::Internet.url,
    price: [25000, 50000, 100000].sample,
    discount: [5, 10, 15, 20, 25].sample,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number.gsub(".", "-"),
    verified: [true, false].sample
  )
end
