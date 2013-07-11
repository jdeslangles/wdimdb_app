Movie.delete_all
movies = Movie.create([
  { title: "Fight Club", year: 1999 },
  { title: "The Avengers", year: 2013 },
  { title: "The Dark Knight", year: 2011 }
  ])

Actor.delete_all
actors = Actor.create([
  { name: "Brad Pitt" },
  { name: "Scarlet Johansson" },
  { name: "Christian Bale" }
  ])

Category.delete_all
categories = Category.create([
  { category_name: "Thriller" },
  { category_name: "Action" },
  { category_name: "Comedy" },
  { category_name: "Sci-fi" },
  { category_name: "Animation" }
  ])