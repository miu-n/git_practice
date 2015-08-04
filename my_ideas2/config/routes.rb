Rails.application.routes.draw do

  # CREATE
  get '/new_idea' => 'ideas2#new'
  get '/create_idea' => 'ideas2#create'

  # READ
  get '/ideas' => 'ideas2#index'
  get '/ideas/:id' => 'ideas2#show'

  # UPDATE
  get '/ideas/:id/edit' => 'ideas2#edit'
  get '/ideas/:id/update' => 'ideas2#update'

  # DELETE
  get '/ideas/:id/destroy' => 'ideas2#destroy'

end
