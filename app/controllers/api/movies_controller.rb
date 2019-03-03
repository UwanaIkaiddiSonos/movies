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
      run_time: params[:input_run_time]
      # if title: params[:input_title] || "No Name"
      # if :input_title == nil
      #   :input_title = "No Name"
      # end
      # if :input_run_time == nil
      #   :input_run_time = 0
      # end
    )
    @movie.save
    render 'show.json.jbuilder'
  end

  def update
    #find the movie I want to update
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    #actually update the movie
    @movie.title = params[:title]
    # @movie.run_time == @movie.run_time
    @movie.save
    render 'show.json.jbuilder'
  end

  def delete
    #find the movie
    the_id = params[:id]
    @movie = Movie.find_by(id: the_id)
    #destroy the movie
    @movie.destroy
    render 'destroy.json.jbuilder'
  end
end
