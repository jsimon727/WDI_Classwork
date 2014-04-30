GalacticApp::Application.routes.draw do

# get "/spaceships", to: "spaceships#index"

# get "/spaceships/new", to: "spaceships#new"

# post "/spaceships", to: "spaceships#create"

# get "/spaceships/:id", to: "spaceships#show"

# get "/spaceships/:id/new", to: "aliens#new"

# post "/spaceships/:id/aliens", to: "aliens#create"

# get "/spaceships/:id/aliens/:id", to: "aliens#show"


resources :spaceships do
  resources :aliens
end

end
