Rails.application.routes.draw do
  
# CREATE
  get '/new_song' => 'songs#new'
  get '/create_song' => 'songs#create'

  # READ
  get '/songs' => 'songs#index'
  get '/songs/:id' => 'songs#show'

  # UPDATE
  get '/songs/:id/edit' => 'songs#edit'
  get '/songs/:id/update' => 'songs#update'

  # DELETE
  get '/songs/:id/destroy' => 'songs#destroy'
  #------------------------------

  # Routes for the Artist resource:
  # CREATE
  get '/new_artist' => 'artists#new'
  get '/create_artist' => 'artists#create'

  # READ
  get '/artists' => 'artists#index'
  get '/artists/:id' => 'artists#show'

  # UPDATE
  get '/artists/:id/edit' => 'artists#edit'
  get '/artists/:id/update' => 'artists#update'

  # DELETE
  get '/artists/:id/destroy' => 'artists#destroy'
  #------------------------------
end
