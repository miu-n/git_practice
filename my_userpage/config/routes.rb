Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/new_userpage' => 'application#new'
  get '/create_userpage' => 'application#create'
  get '/userpage/:id/edit' => 'application#edit'
  get '/update_userpage/:id' => 'application#update'
end
