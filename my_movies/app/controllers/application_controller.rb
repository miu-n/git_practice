class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @movie = Movie.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    m = Movie.new
    m.title = params['title']
    m.url = params['url']
    m.save
    redirect_to "/movies/#{ m.id }"
  end
  
  def edit
    @movie = Movie.find_by_id(params['id'])
  end
  
  def update
    m = Movie.find_by_id(params['id'])
    m.title = params['title']
    m.url = params['url']
    m.save
    redirect_to "/movies/#{ m.id }"
  end
  
  def destroy
    m = Movie.find_by_id(params['id'])
    m.destroy
    redirect_to "/movies"
  end
  
  def index
    @movie = Movie.all
  end
  
end
