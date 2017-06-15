# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Spot.destroy_all
Favourite.destroy_all


home = Spot.create(location_name: "home",latitude: "0", longitude: "1",user_id: 1)
work = Spot.create(location_name: "work", latitude: "2", longitude: "3",user_id: 1)
school = Spot.create(location_name: "school", latitude: "4", longitude: "5",user_id: 1)
spot1 = Spot.create(location_name: "spot1", latitude: "6", longitude: "7",user_id: 1)
spot2 = Spot.create(location_name: "spot2", latitude: "8", longitude: "9", user_id: 1)
