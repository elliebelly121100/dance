class StudiosController < ApplicationController

  
  def index
    @studios = Studio.all
  end

  def show
    @studio = Studio.find_by(id: params[:id])
  end

  def new
  end

  def create
    @studio = Studio.new
    @studio.name = params[:name]

    if @studio.save
      redirect_to "/studios/#{ @studio.id }", :notice => "Studio created."
    else
      redirect_to "/new_studio", :notice => @studio.errors.full_messages.join(' ')
    end
  end

  def edit
    @studio = Studio.find_by(id: params[:id])
  end

  def update
    @studio = Studio.find_by(id: params[:id])
    @studio.name = params[:name]

    if @studio.save
      redirect_to "/studios/#{ @studio.id }", :notice => "Studio updated."
    else
      redirect_to "/edit_studio#{ @studio.id }", :notice => @gif.errors.full_messages.join(' ')

    end
  end

  def destroy
    @studio = Studio.find_by(id: params[:id])
    @studio.destroy


    redirect_to "/studios"
  end
end
