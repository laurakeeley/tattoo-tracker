# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([{name: "laura", email: "laura@gmail.com", password: "password", password_confirmation: "password", profile_image: "https://images.pexels.com/photos/1922528/pexels-photo-1922528.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}])
Client.create!([{name: "zia", email: "zia@gmail.com", password: "password", password_confirmation: "password", profile_image: "https://images.pexels.com/photos/4553022/pexels-photo-4553022.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}])
Client.create!([{name: "olga", email: "olga@gmail.com", password: "password", password_confirmation: "password", profile_image: "https://images.pexels.com/photos/6231881/pexels-photo-6231881.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"}])
