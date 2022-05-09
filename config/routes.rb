Rails.application.routes.draw do
  get '/index' => 'home#index' 
  get '/write' => 'home#write' 
  post '/create' => 'home#create' 
  
  get '/modify/:post_id' => 'home#modify'
  post '/update/:post_id' => 'home#update'
  get '/delete/:post_id' => 'home#delete'
end
