Rails.application.routes.draw do
  get "/greet" => 'pages#home'
  get "/sign_in" => 'pages#sign_in'
  get "/sign_out" => 'pages#sign_out'
end
