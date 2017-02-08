
class ActorsController < ApplicationController





# Create

  def new_form

  end

  def create_row
  p = Actor.new
  p.name = params[:the_name]
  p.bio = params[:the_bio]
  p.dob = params[:the_dob]
  p.image_url = params[:the_url]
  p.save

  redirect_to("/actors")

  end

# Read

  def view
  @list_of_actors = Actor.all

  render("view.html.erb")
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)

  end

# Update

  def edit_form
  @actor = Actor.find_by(:id => params[:id])

  end

  def update_row
  @actor = Actor.find_by(:id => params[:id])
  @actor.name = params[:the_name]
  @actor.bio = params[:the_bio]
  @actor.dob = params[:the_dob]
  @actor.image_url = params[:the_url]
  @url1 = "/actors/"
  @url2 = @actor.id.to_s
  @url = @url1 + @url2

  @actor.save
  redirect_to(@url)

  end

# Delete
  def destroy
    id = params[:id]
    @actor = Actor.find(id)
    @actor.destroy
    redirect_to("/actors")
  end

end
