class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.bio = params[:bio]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    

    if @user.save
      redirect_to "/users/#{ @user.id }", :notice => "User created."
      else
      redirect_to "/new_user", :notice => @user.errors.full_messages.join(' ')
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
    
    if @user.name != session['username']
      redirect_to "/users", :notice => "Can't edit #{@user.name}"
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.bio = params[:bio]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

    if @user.save
      redirect_to "/users/#{ @user.id }", :notice => "User updated."
    else
      redirect_to "/edit_user/#{ @user.id }", :notice => @user.errors.full_messages.join(' ')
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if session['username'] == 'elliebelly121100@yahoo.com'
       @user.destroy
      redirect_to "/users"
    else 
      redirect_to "/users", :notice => "Can't destroy #{@user.name}"
    end
  end


end
