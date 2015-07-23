Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/userpage/1' => 'application#first'
  get '/userpage/2' => 'application#second'
  get '/userpage/3' => 'application#third'
end
