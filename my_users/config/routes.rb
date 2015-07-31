Rails.application.routes.draw do
  get '/users/:id' => 'application#show'
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  get '/user/:id/edit' => 'applicatione#edit'
end
