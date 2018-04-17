class Movie
  attr_accessor :name, :year, :rating, :director, :actors,
                :budget, :country, :language, :runtime, :summary

  @@movies = []

  def self.movies
    @@movies
  end

  def initialize(attributes)
     @name = attributes[:name]
     @year = attributes[:year]
     @rating = attributes[:rating]
     @director = attributes[:director]
     @actors = attributes[:actors]
     @budget = attributes[:budget]
     @country = attributes[:country]
     @language = attributes[:language]
     @runtime = attributes[:runtime]
     @summary = attributes[:summary]

    @@movies.push(self)
  end
end


def all_movies
  Movie.movies
end


Movie.new({
  name: 'Spiderman',
  year: 2017,
  rating: 7.5,
  director: 'Jon Watts',
  actors: ['Tom Holland', 'Michael Keaton', 'Robert Downey Jr'],
  budget: 175_000_000,
  coutry: 'USA',
  language: 'English',
  runtime: 133,
  summary: 'Peter Parker is exploring the concept of becoming an Avenger.'
})

Movie.new({
  name: 'Star wars',
  year: 2017,
  rating: 7.4,
  director: 'Rian Johnson',
  actors: ['Daisy Ridley', 'John Boyega', 'Mark Hamill'],
  budget: 620_164_565,
  coutry: 'USA',
  language: 'English',
  runtime: 152,
  summary: 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers.'
})

Movie.new({
  name: 'Deadpool',
  year: 2016,
  rating: 8.0,
  director: 'Tim Miller',
  actors: ['Ryan Reynolds', 'Morena Baccarin', 'T.J.Miller'],
  budget: 58_000_000,
  coutry: 'USA',
  language: 'English',
  runtime: 108,
  summary:'This is the origin story of former Special Forces operative turned mercenary Wade Wilson.'
})

Movie.new({
   name: 'Batman v Superman',
   year: 2016,
   rating: 6.6,
   director: 'Zack Snyder',
   actors: ['Ben Affleck', 'Henry Cavill', 'Amy Adams'],
   budget: 250_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 151,
   summary: 'The general public is concerned over having Superman on their planet and letting the "Dark Knight" - Batman - pursue the streets of Gotham.'
})

Movie.new({
   name: 'Beirut',
   year: 2018,
   rating: 4.8,
   director: 'Brad Anderson',
   actors: ['Rosamund Pike', 'Jon Hamm', 'Mark Pellegrino'],
   budget: 5_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 180,
   summary: 'Caught in the crossfires of civil war, CIA operatives must send a former U.S. diplomat to negotiate for the life of a friend he left behind.'
})

Movie.new({
   name: 'Captain Amerika',
   year: 2016,
   rating: 7.8,
   director: 'Anthony Russo',
   actors: ['Chris Evans', 'Robert Downey Jr.', 'Scarlett Johansson'],
   budget: 300_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 147,
   summary: "With many people fearing the actions of super heroes, the government decides to push for the Hero Registration Act, a law that limits a hero's actions."
})

Movie.new({
   name: 'The Godfather',
   year: 1972,
   rating: 9.2,
   director: 'Francis Ford Coppola',
   actors: ['Marlon Brando', 'Al Pacino', 'James Caan'],
   budget: 6_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 175,
   summary: 'When the aging head of a famous crime family decides to transfer his position to one of his subalterns, a series of unfortunate events start happening to the family,'
})

Movie.new({
   name: 'The dark knight',
   year: 2008,
   rating: 9.0,
   director: 'Christopher Nolan',
   actors: ['Christian Bale', 'Heath Ledger', 'Aaron Eckhart'],
   budget: 185_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 153,
   summary: "Batman's struggle against the Joker becomes deeply personal, forcing him to confront everything he believes and improve his technology to stop him."
})

Movie.new({
   name: 'Fight club',
   year: 1999,
   rating: 8.8,
   director: 'David Fincher',
   actors: ['Brad Pitt', 'Edward Norton', 'Meat Loaf'],
   budget: 65_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 139,
   summary: 'A nameless first person narrator (Edward Norton) attends support groups in attempt to subdue his emotional state and relieve his insomniac state.'
})

Movie.new({
   name: 'The Matrix',
   year: 1999,
   rating: 8.7,
   director: 'Lana Wachowski',
   actors: ['Keanu Reeves', 'Laurence Fishburne, Carrie-Anne Moss'],
   budget: 63_000_000,
   coutry: 'USA',
   language: 'English',
   runtime: 136,
   summary: "Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo."
})

all_movies.any? do |movie|
  puts "#{movie.name} rating = #{movie.rating}"
  movie.rating > 8
end

all_movies.all? do |movie|
  puts "#{movie.name} budget = #{movie.budget}"
  movie.budget > 50_000_000
end

puts all_movies.count

all_movies.count do |movie|
  puts "#{movie.name} runtime = #{movie.runtime}"
  movie.runtime > 120
end

all_movies.map do |movie|
  movie.actors
end

all_movies.map do |movie|
  movie.director
end

all_movies.map do |movie|
  {
   name: movie.name,
   director: movie.director,
   year: movie.year
  }
end
