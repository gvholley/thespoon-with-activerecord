Rails.application.routes.draw do
  # CRUD
  # create, read, update, destroy
  # verb, '/path', 'to: controller#action'
  # Read all
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # Read one
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Create
  # a simple get request for a form page
  get 'resaurants/new', to: 'restaurants#new', as: :new_restaurant
  # where do we want to send the form?
  post '/restaurants', to: 'restaurants#create'
  # Update
  # a simple get request for a form page
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Destroy
  delete 'restaurants/:id', to: 'restaurants#destroy'
end
