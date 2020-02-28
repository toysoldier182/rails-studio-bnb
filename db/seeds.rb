require 'open-uri'

5.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    email: Faker::Internet.email,
    password: '********'
    )
end

studio = Studio.create(name: 'Real Line Music',
  location: "Los Angeles",
  price: 998 ,
  user_id: rand(1..5),
  description: " 7 minutes walk to Shepherd's Bush tube and the famous Westfield shopping centre that has all the shops, restaurants, cinema and amenities."
  )
file = URI.open(Rails.root.join('app','assets','images','iu-3.jpeg'))
studio.photos.attach(io: file, filename: "#{studio.name}.jpeg", content_type: 'image/jpeg')


studio = Studio.create(name: "Paramount Recording Studio" ,
  location: "Los Angeles",
  price: 450,
  user_id: rand(1..5),
  description: "As the look and sound of music changes, so does The Village. From legends like Fleetwood Mac, The Rolling Stones, B. B. King and Bob Dylan to current artists like Lady Gaga, Coldplay, Taylor Swift and John Mayer you would be hard pressed to find an artist who hasn’t recorded here."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-4.jpeg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpeg", content_type: 'image/jpeg')


studio = Studio.create(name: "The Dub Room",
  location: "Los Angeles",
  price: 320,
  user_id: rand(1..5),
  description: "For over 9 years, The Dub Room Studio has been tucked away on the world famous Sunset Strip in Los Angeles, CA. It has been the creative hub for a variety of artist seeking a more intimate recording environment."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-5.jpeg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpeg", content_type: 'image/jpeg')


studio = Studio.create(name: "Union Recording Studio",
  location: "Los Angeles",
  price: 777,
  user_id: rand(1..5),
  description: "Whether you are an artist just starting out, an expert or individual who loves music, at Union Recording Studio we are designed to meet the needs of major projects while remaining accessible and affordable for anyone."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-7.jpeg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpeg", content_type: 'image/jpeg')


studio = Studio.create(name: "Chase Bell Music",
  location: "Los Angeles",
  price: 1250,
  user_id: rand(1..5),
  description: "Record Pro Music with On site Instrumentalist, Producer, Engineer, Arranger Etc. The music produced in this studio has ended up on Tv, Films, Commercial and artists from every genre."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-8.jpeg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpeg", content_type: 'image/jpeg')


studio = Studio.create(name: "West LA Studios",
  location: "Los Angeles",
  price: 3000,
  user_id: rand(1..5),
  description: "The finest rehearsal studio facility in Los Angeles. Our rehearsal studios are fully equipped with great equipment and P.A.'s."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-9.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')


studio = Studio.create(name: "Soundbite Studios",
  location: "London",
  price: 250,
  user_id: rand(1..5),
  description:"SoundBite Studios is an oasis in the heart of London offering musicians, filmmakers, photographers, and artists alike an escape from their every day grind."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-10.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')


studio = Studio.create(name: "Strongroom Music Studios" ,
  location: "London",
  price: 690,
  user_id: rand(1..5),
  description: "Founded in 1984, Strongroom is an independent music community based in Shoreditch. Our award-winning studios offer some of the very best sound facilities in the UK, premium equipment, and breath-taking visual design by legendary artist, Jamie Reid."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-11.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')


# studio = Studio.create(name: "The Premises",
#   location: "London",
#   price: 125,
#   user_id: rand(1..5),
#   description: "The Premises Studios is a music studio complex based near Haggerston in Hackney, London. The studio complex contains 10 commercial rehearsal studio spaces, one acoustic recording studio, one mixing studio, and various private long-let rooms and office spaces."
#   )
# file = URI.open(Rails.root.join('app','assets','images','iu-12.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')


studio = Studio.create(name: "MassiveMusic London",
  location: "London",
  price: 50,
  user_id: rand(1..5),
  description:"MassiveMusic is a full-service music agency composed of specialist yet integrated departments. We offer a broad array of services in the creation, production and management of music for the world’s leading advertising agencies, brands, media and technology companies. \
  From Abba to Zappa and bass-lines to tag-lines, we can take care of almost everything. Select your preferred service and get lost in the music."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-13.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')


studio = Studio.create(name: "The Red Room",
  location: "London",
  price: 2000,
  user_id: rand(1..5),
  description: "The Red Room London is one of London's most respected mixing studios. Not only that but it can also be used as great writing environment when artists want the best monitoring possible. The studio was refurbished and re-equipped at the end of 2015 in partnership with Swiss mix engineer Philippe Weiss. The control room is centered around an updated SSL 56 channel G+ Series Console with both Ultimation and total recall , Augspurger Duo-15” Monitors with Dual 18” subs and a Pro Tools HDX rig with a whole host of plug-ins including a UAD card. The room has been built and equipped to create one of the best sounding mix rooms in the country and the vast equipment spec compliments this."
  )
# file = URI.open(Rails.root.join('app','assets','images','iu-13.jpg'))
# studio.photos.attach(io: file, filename: "#{studio.name}.jpg", content_type: 'image/jpg')
