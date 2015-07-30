Rails.application.routes.draw do
  
  # CREATE
  get '/new_userpage' => 'userpage#new'
  get '/create_userpage' => 'userpage#create'
  
  # READ
  get '/userpage/:id' => 'userpage#show'
  get '/userpage' => 'userpage#index'
  
  # UPDATE
  get '/userpage/:id/edit' => 'userpage#edit'
  get '/update_userpage/:id' => 'userpage#update'
  
  # DESTROY
  get '/userpage/:id/destroy' => 'userpage#destroy'

end
