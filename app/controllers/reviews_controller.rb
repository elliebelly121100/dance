class ReviewsController < ApplicationController
  before_filter :login_required
  
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(id: params[:id])
  end

  def new
  end

  def create
    @review = Review.new
    @review.user_id = params[:user_id]
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
    @review.destroy


    redirect_to "/reviews"
  end
end
