Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/new_userpage' => 'application#new'
  get '/create_userpage' => 'application#create'
end
