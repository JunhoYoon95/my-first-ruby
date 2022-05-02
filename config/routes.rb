Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/' => 'home#index' 
  # 슬래시(/)로 접속을 하게 되면, home 안에 들어있는 index 액션으로 작업을 하도록 만들어라
  get '/add' => 'calculator#add'
  get '/result' => 'calculator#result'
end
