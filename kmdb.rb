# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Cast.destroy_all
Studio.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

new_movie = Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["MPAA"] = "PG-13"
new_movie["studio"] = "Warner Bros."
new_movie.save

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight "
new_movie2["year_released"] = "2008"
new_movie2["MPAA"] = "PG-13"
new_movie2["studio"] = "Warner Bros."
new_movie2.save

new_movie3 = Movie.new
new_movie3["title"] = "The Dark Knight Rises"
new_movie3["year_released"] = "2012"
new_movie3["MPAA"] = "PG-13"
new_movie3["studio"] = "Warner Bros."
new_movie3.save

new_cast = Cast.new
new_cast["actor"] = "Christian Bale"
new_cast["role"] = "Bruce Wayne"
new_cast["title"] = "Batman Begins"
new_cast.save

new_cast2 = Cast.new
new_cast2["actor"] = "Michael Caine"
new_cast2["role"] = "Alfred"
new_cast2["title"] = "Batman Begins"
new_cast2.save

new_cast3 = Cast.new
new_cast3["actor"] = "Liam Neeson"
new_cast3["role"] = "Alfred"
new_cast3["title"] = "Ra's Al Ghul"
new_cast3.save

new_cast4 = Cast.new
new_cast4["actor"] = "Katie Holmes "
new_cast4["role"] = "Rachel Dawes"
new_cast4["title"] = "Batman Begins"
new_cast4.save

new_cast5 = Cast.new
new_cast5["actor"] = "Gary Oldman"
new_cast5["role"] = "Commissioner Gordon"
new_cast5["title"] = "Batman Begins"
new_cast5.save

new_cast6 = Cast.new
new_cast6["actor"] = "Christian Bale"
new_cast6["role"] = "Bruce Wayne"
new_cast6["title"] = "The Dark Knight"
new_cast6.save

new_cast7 = Cast.new
new_cast7["actor"] = "Heath Ledger"
new_cast7["role"] = "Joker"
new_cast7["title"] = "The Dark Knight"
new_cast7.save

new_cast8 = Cast.new
new_cast8["actor"] = "Aaron Eckhart"
new_cast8["role"] = "Harvey Dent"
new_cast8["title"] = "The Dark Knight"
new_cast8.save

new_cast9 = Cast.new
new_cast9["actor"] = "Michael Caine"
new_cast9["role"] = "Alfred"
new_cast9["title"] = "The Dark Knight"
new_cast9.save

new_cast10 = Cast.new
new_cast10["actor"] = "Maggie Gyllenhaal"
new_cast10["role"] = "Rachel Dawes"
new_cast10["title"] = "The Dark Knight"
new_cast10.save

new_cast11 = Cast.new
new_cast11["actor"] = "Christian Bale"
new_cast11["role"] = "Bruce Wayne"
new_cast11["title"] = "The Dark Knight Rises"
new_cast11.save

new_cast12 = Cast.new
new_cast12["actor"] = "Gary Oldman"
new_cast12["role"] = "Commissioner Gordon"
new_cast12["title"] = "The Dark Knight Rises"
new_cast12.save

new_cast13 = Cast.new
new_cast13["actor"] = "Tom Hardy"
new_cast13["role"] = "Bane"
new_cast13["title"] = "The Dark Knight Rises"
new_cast13.save

new_cast14 = Cast.new
new_cast14["actor"] = "Joseph Gordon-Levitt"
new_cast14["role"] = "John Blake"
new_cast14["title"] = "The Dark Knight Rises"
new_cast14.save

new_cast15 = Cast.new
new_cast15["actor"] = "Anne Hathaway"
new_cast15["role"] = "Selina Kyle"
new_cast15["title"] = "The Dark Knight Rises"
new_cast15.save

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

all_movies = Movie.all
puts all_movies.inspect

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

all_casts = Cast.all
puts all_casts.inspect

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
