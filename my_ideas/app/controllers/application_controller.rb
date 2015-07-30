class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
  end
  
  def new
  end
  
  def create
    i = Idea.new
    i.idea = params['idea']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def edit
    @idea = Idea.find_by_id(params['id'])
  end
  
  def update
    i = Idea.find_by_id(params['id'])
    i.idea = params['idea']
    i.save
    redirect_to "/ideas/#{ i.id }"
  end
  
  def destroy
    i = Idea.find_by_id(params['id'])
    i.destroy
  end
  
  def index
    @ideas = Idea.all
  end
end
