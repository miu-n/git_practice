class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def show
    @User = User.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    if params[:name] == "Albert Einstein"
    render "user"
    else
      render "user2"
    end
  end
end

