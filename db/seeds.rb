15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    email: Faker::Internet.email,
    password: '********'
    )
end

15.times do
  Studio.create(
    name: Faker::Address.street_name,
    location: Faker::Address.street_address,
    price: rand(200..1000),
    user_id: rand(1..15)
    )
end
