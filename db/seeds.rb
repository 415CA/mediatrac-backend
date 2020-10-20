# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Movie.destroy_all
Watch.destroy_all
Favorite.destroy_all
Future.destroy_all

# User.create(id: 1, uid: 'Firebase ID', name: 'Name', email: 'email@email.com', photoURL: 'Photo URL', phone_number: 555555555)
# Movie.create(id: 1, tmdb_id: 1, original_title: 'Title', overview: 'Description', poster_path:'poster', release_date:'date', runtime: '121 mins', tagline: 'Tagline', genre: 'Horror')
# Watch.create(user_id: 1, movie_id: 1, name: 'Watch 1')
# Favorite.create(user_id: 1, movie_id: 1, name: 'Favorite 1')
# Future.create(user_id: 1, movie_id: 1, name: 'Future 1')

# Movie.create(id: 2, tmdb_id: 2, original_title: 'Title', overview: 'Description', poster_path:'poster', release_date:'date', runtime: '121 mins', tagline: 'Tagline', genre: 'Comedy')
# Watch.create(user_id: 1, movie_id: 2, name: 'Watch 1')
# Favorite.create(user_id: 1, movie_id: 2, name: 'Favorite 1')
# Future.create(user_id: 1, movie_id: 2, name: 'Future 1')