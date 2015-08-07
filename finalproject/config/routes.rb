Rails.application.routes.draw do
  get '/home' => 'pages#home'
  get '/food' => 'pages#food'
  get '/sightseeing' => 'pages#sightseeing'
  get '/shopping' => 'pages#shopping'
  get '/topthingstodo' => 'pages#topthingstodo'
end
