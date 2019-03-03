class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    render 'show.json.jbuilder'
  end

  def show_title
    the_title = params[:title]
    @movie_title = Movie.find_by(title: the_title)
    render 'show_title.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      title: params[:input_title],
      run_time: params[:input_run_time])
    @movie.save
    render 'create.json.jbuilder'
  end
end
