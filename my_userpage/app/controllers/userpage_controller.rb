class UserpageController < ApplicationController
  def show
    @userpage = Userpage.find_by(id: params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    @userpage = Userpage.new
    @userpage.pageheader = params['pageheader']
    @userpage.url = params['url']
    if @userpage.save
      redirect_to "/userpage/#{ @userpage.id }"
    else
      render 'new'
    end
  end
  
  def edit
    @userpage = Userpage.find_by(id: params['id'])
  end
  
  def update
    @userpage = Userpage.find_by(id: params['id'])
    @userpage.pageheader = params['pageheader']
    @userpage.url = params['url']
    if @userpage.save
      redirect_to "/userpage/#{ @userpage.id }"
    else
      render 'edit'
    end
  end
  
  def destroy
    @userpage = Userpage.find_by(id: params['id'])
    @userpage.destroy
    redirect_to "/userpage"
  end
  
  def index
    @userpage = Userpage.all
  end
end