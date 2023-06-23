Rails.application.routes.draw do
  devise_for :users
  #get 'home/index'

  root 'home#index'
  get 'home/questions'
  get 'home/users'
  get 'home/quiz'

  post '/submit', to: 'home#submit', as: 'submit'
  get '/result', to: 'home#result', as: 'result'
  get 'home/flag'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
