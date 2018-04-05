movies = {
  StarWars: 4.8,
  Divergent: 4.7,
  HarryPotter: 3.8,
  SpiderMan: 5.0
}

puts "What would you like to do? "
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
puts "-- Type 'exit' to quit program."

choice = gets.chomp


  def add_movie(movies)
    puts "What movie would you like to add? "
    title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "What's the rating? (type a number 0 to 4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
end


  def update_movie(movies)
    puts "What movie do you want to update?"
    title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
end


  def display_movies(movies)
    movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
end


def delete_movie(movies)
  puts "What movie you want to delete?"
  title = gets.chomp
if movies[title.to_sym].nil?
  puts "Movie not found!"
else
  movies.delete(title.to_sym)
  puts "#{title} has been removed."
 end
end


def exit_script(movies)
  Process.exit!
end


case choice
 when "add" then add_movie(movies)
 when "update" then update_movie(movies)
 when "display" then display_movies(movies)
 when "delete" then delete_movie(movies)
 when "exit" then exit_script(movies)
end
