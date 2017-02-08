

class MoviesController < ApplicationController



# Create

  def new_form

  end

  def create_row
  p = Movie.new
  p.title = params[:the_title]
  p.year = params[:the_year]
  p.duration = params[:the_duration].to_s + " minutes"
  p.description = params[:the_description]
  p.image_url = params[:the_url]
  p.save

  redirect_to("/movies")

  end

# Read

  def view
  @list_of_movies = Movie.all

  render("view.html.erb")
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)

  end

# Update

  def edit_form
  @movie = Movie.find_by(:id => params[:id])

  end

  def update_row
  @movie = Movie.find_by(:id => params[:id])
  @movie.title = params[:the_title]
  @movie.year = params[:the_year]
  @movie.duration = params[:the_duration].to_s + " minutes"
  @movie.description = params[:the_description]
  @movie.image_url = params[:the_url]
  @url1 = "/movies/"
  @url2 = @movie.id.to_s
  @url = @url1 + @url2

  @movie.save
  redirect_to(@url)

  end

# Delete
  def destroy
    id = params[:id]
    @movie = Movie.find(id)
    @movie.destroy
    redirect_to("/movies")
  end

end
