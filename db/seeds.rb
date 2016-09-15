# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.delete_all

Movie.create(api_url: "http://www.omdbapi.com/?t=Sausage Party&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BMjkxOTk1MzY4MF5BMl5BanBnXkFtZTgwODQzOTU5ODE@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=The Jungle Book&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BMTc3NTUzNTI4MV5BMl5BanBnXkFtZTgwNjU0NjU5NzE@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=Max Steel&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BYmRjZmEzNzItMTllNS00NTVmLWFjYTctZTJhODllNGZjYWNjXkEyXkFqcGdeQXVyMjAxMDM2ODQ@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=Captain America: Civil War&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=The Secret Life of Pets&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BMjIzMzA1OTkzNV5BMl5BanBnXkFtZTgwODE3MjM4NzE@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=Miss Peregrine's Home for Peculiar Children&y=2016&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BMTA1NDg2MzM5NDleQTJeQWpwZ15BbWU4MDA5OTg5MTkx._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=The Light Between Oceans&y=2016&tomatoes=true",image_url: "http://ia.media-imdb.com/images/M/MV5BNTI1NzQzMjgxOF5BMl5BanBnXkFtZTgwOTY1OTY2OTE@._V1_SX300.jpg", is_popular: true, is_previous: false)

Movie.create(api_url: "http://www.omdbapi.com/?t=Finding Nemo&y=2003&tomatoes=true", image_url: "http://ia.media-imdb.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg", is_popular: true, is_previous: false)
