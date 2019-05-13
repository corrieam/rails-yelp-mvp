# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Franco Manca',
    address: '7 Boundary St, London E2 7JE',
    phone_number: '020 7420 9324',
    category: 'italian'
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: '020 7729 1888',
    category: 'italian',
  },
  {
    name: 'Sushisamba',
    address: '110 Bishopsgate, London EC2N 4AY',
    phone_number: '020 3640 7330',
    category: 'japanese',
  },
  {
    name: 'Sun Bo',
    address: '15 Tranquil Vale, Lewisham, London SE3 0BU',
    phone_number: '020 8852 40598',
    category: 'chinese',
  },
  {
    name: 'Belgo',
    address: '50 Earlham St, London WC2H 9LJ',
    phone_number: '020 7813 2233',
    category: 'belgian',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
