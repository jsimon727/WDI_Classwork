class SpaceshipsController < ApplicationController  
  def index
    @spaceships = Spaceship.all
    render(:index)
  end

  def new
    render(:new)
  end

  def create
    @spaceship = Spaceship.create({
      name: params[:name],
      capacity: params[:capacity],
      origin: params[:origin],
      species_allowed: params[:species_allowed],
      photo_url: params[:photo_url],
      purpose: params[:purpose]
      })
    redirect_to("/spaceships/")
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    render(:show)
  end
end