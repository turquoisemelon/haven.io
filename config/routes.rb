Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  resources :users, except: [:index, :show, :destroy]
  get '/signup' => 'users#new'
  # post '/users' => 'users#create'


  namespace :admin do
    root to: 'users#index'
    get '/dashboard' => 'dashboard#index'
    resources :users, only: [:update, :index]
  end

  namespace :api do
    get 'users/:id' => 'user#show'
  end

end
