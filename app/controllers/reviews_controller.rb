class ReviewsController < ApplicationController
  before_filter :login_required
  
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(id: params[:id])
  end

  def new
    @studios = Studio.all
  end

  def create
    u = User.find_by_name(session[:username])
    @review = Review.new
    @review.user_id = u.id
    @review.text = params[:text]
    @review.rating = params[:rating]
    @review.studio_id = params[:studio_id]

    if @review.save
      redirect_to "/reviews/#{ @review.id }"
    else
      redirect_to "/new_review/#{ @review.id }", :notice => @review.errors.full_messages.join(' ')
    end
  end

  def edit
    @review = Review.find_by(id: params[:id])
    
    if @review.user.name != session['username']
      redirect_to "/users", :notice => "Can't edit #{@review.id}"
    end
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.user_id = params[:user_id]
    @review.text = params[:text]
    @review.rating = params[:rating]
    @review.studio_id = params[:studio_id]

    if @review.save
      redirect_to "/reviews/#{ @review.id }"
    else
      redirect_to "/reviews/#{ @review.id}", :notice => @review.errors.full_messages.join(' ')

    end
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    if @review.user.name != session['username']
      redirect_to "/reviews", :notice => "Can't destroy Review #{@review.id}"
    else @review.destroy
        redirect_to "/reviews"
    end
  end
end
