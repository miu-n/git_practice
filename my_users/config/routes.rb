Rails.application.routes.draw do
  get '/users/:id' => 'application#show'
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  get '/users/:id/edit' => 'applicatione#edit'
  get '/update_user/:id' => 'application#update'
end
