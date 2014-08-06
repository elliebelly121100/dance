class PagesController < ApplicationController
  def user_create
  end
 
  def login
    session['username'] = params['username']
  end
  
  def sign_out
    reset_session 
    redirect_to '/login'
  end
end