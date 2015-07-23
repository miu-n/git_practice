class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def show
    if params['id'] == '1'
          @url = "http://a3.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,q_80,w_620/MTE5NTU2MzE2MTg4NzM5MDgz.jpg"
    @pageheader = "Christopher Columbus"
    elsif params['id'] == '2'
      @url = "http://a2.files.biography.com/image/upload/c_fit,cs_srgb,dpr_1.0,h_1200,q_80,w_1200/MTE1ODA0OTcxNzM3MTIyMzE3.jpg"
    @pageheader = "Sir Isaac Newton"
    elsif params['id'] == '3'
      @url = "http://www.math.nyu.edu/~crorres/Archimedes/Pictures/Chocolate_Card/Chocolate_card_600dpi.jpg"
    @pageheader = "Archimedes"
    end
    render 'show'
  end
  
end
