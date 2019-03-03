# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.new(title: "Castaway", run_time: 120)
movie.save

movie = Movie.new(title: "Blue Lagoon", run_time: 90)
movie.save

movie = Movie.new(title: "Legally Blonde", run_time: 180)
movie.save