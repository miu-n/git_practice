class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    @userpage = Userpage.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end  
  
  def create
    u = Userpage.new
    u.pageheader = params['pageheader']
    u.url = params['url']
    u.save
    redirect_to "/userpage/#{ u.id }"
  end
  
  def edit
    @userpage = Userpage.find_by_id(params['id'])
  end
  
  def update
    u = Userpage.find_by_id(params['id'])
    u.pageheader = params['pageheader']
    u.url = params['url']
    u.save
    redirect_to "/userpage/#{ u.id }"
  end
end