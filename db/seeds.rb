# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying database..."
Restaurant.destroy_all


puts "Creating a restaurant..."
restaurants_attributes = [
  {
    name:         'Lumiere',
    address:      'Widdergasse 5, 8001 Zurich',
    phone_number: '0442115665',
    category:     'french'
  },
  {
    name:         'Minine',
    address:      'Zeltweg 12, 8032 Zurich',
    phone_number: '0442608929',
    category:     'japanese'
  },
  name:         'Achi',
    address:      'Brauerstrasse 4, 8004 Zurich',
    phone_number: '0442548885',
    category:     'chinese'
  },
  {
    name:         'Bindella',
    address:      'In Gassen 6, 8001 Zurich',
    phone_number: '0442212546',
    category:     'italian'
  },
  {
    name:         'Zeughauskeller',
    address:      'Bahnhofstrasse 28, 8001 Zurich',
    phone_number: '0442201515',
    category:     'belgian'
  }
 ]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'



puts "Destroying database..."
Review.destroy_all


puts "Creating a review..."
review_attributes = [
  {
    restaurant_id:  2,
    content:       'Unique food',
    rating:         5
  },
]


Review.create!(review_attributes)
puts 'Finished!'

