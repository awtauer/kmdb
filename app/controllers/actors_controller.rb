class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

  def show

    the_id = params[:id]
    @actor = Actor.find_by({ :id => the_id})

    # Your code goes here
    # Use the information after the slash in the URL to look up the actor with the corresponding ID number
    # Store the actor in the @actor instance variable so the view can format it

  end
end
