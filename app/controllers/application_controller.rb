class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def search
    search = params['search']
    redirect_to ('https://www.google.com/#q=' + 'Dance+' + 'studios+' + 'near+' + search).gsub(" ", "+")
  end
  
    def login_required
      @user = User.find_by(id: params[:id])
      user = User.find_by(name: session['username'])
    if user.blank?
      redirect_to('/')
    end
  end
  
end
