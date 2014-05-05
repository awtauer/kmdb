class QuestionsController < ApplicationController
  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.

    @year_of_oldest_movie = Movie.order("year ASC")
  end

  def question_3
    # How many movies does the director of the first movie have on the list?

    # Your Ruby goes here.

    director1 = Movie.where({:id => 1}).select("director_id")
    @number_of_movies_directed_by_first_movie_director = Movie.count.director1

  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    biggestgroup = Movie.order.select("director_id DESC").group
    @most_number_of_movies_by_a_single_director = biggestgroup.count
  end

  def question_5
    # What is the most recent movie on the list that the first actor appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    actor_roles = Role.where({ :actor_id => Actor.first.id }).select("movie_id")
    most_recent = actor_roles.order
    @most_recent_movie_for_first_actor = most_recent.title
  end
end
