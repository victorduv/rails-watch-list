# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("deleting db")
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts("doin new one")
100.times do
  title = Faker::Movie.title
  overview = Faker::Movie.quote
  poster_url = "https://sothebys-md.brightspotcdn.com/fa/77/2696451b429e8fd9704014c478f9/l22899-c5mnq-cs.THEBIGLEBOWSKI.jpg"
  rating = rand(0.0..10.0).round(1)
  Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
end

List.create(name: "Action movies")
List.create(name: "War movies")
List.create(name: "Comedies")
List.create(name: "Anime")
List.create(name: "Vintage movies")
List.create(name: "Documentaries")
List.create(name: "Sitcom")
List.create(name: "Horror movies")
List.create(name: "Foreign cinema")
Bookmark.create(comment: "pretty nice movie", movie_id: Movie.first.id, list_id: List.first.id)

puts("done biatch")
