class AliensController < ApplicationController  

def index
  @aliens = Alien.where(spaceship_id: params[:spaceship_id])
  render(:index)
end

def new
  render(:new)
end

def create
  @spaceship = Spaceship.find(params[:spaceship_id])
   @alien = @spaceship.aliens.create({
      name: params[:name],
      origin: params[:origin],
      appendages: params[:appendages],
      organic_substrate: params[:organic_substrate],
      weakness: params[:weakness],
      strength: params[:strength]
      })
    redirect_to("/spaceships/#{params[:spaceship_id]}/aliens")
end

def show
   @alien = Alien.find(params[:id])
    render(:show)
end

end
