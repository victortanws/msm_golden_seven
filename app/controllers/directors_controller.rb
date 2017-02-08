class DirectorsController < ApplicationController





# Create

  def new_form

  end

  def create_row
  p = Director.new
  p.name = params[:the_name]
  p.bio = params[:the_bio]
  p.dob = params[:the_dob]
  p.image_url = params[:the_url]
  p.save

  redirect_to("/directors")

  end

# Read

  def view
  @list_of_directors = Director.all

  render("view.html.erb")
  end

  def show
    id = params[:id]
    @director = Director.find(id)

  end

# Update

  def edit_form
  @director = Director.find_by(:id => params[:id])

  end

  def update_row
  @director = Director.find_by(:id => params[:id])
  @director.name = params[:the_name]
  @director.bio = params[:the_bio]
  @director.dob = params[:the_dob]
  @director.image_url = params[:the_url]
  @url1 = "/directors/"
  @url2 = @director.id.to_s
  @url = @url1 + @url2

  @director.save
  redirect_to(@url)

  end

# Delete
  def destroy
    id = params[:id]
    @director = Director.find(id)
    @director.destroy
    redirect_to("/directors")
  end

end
