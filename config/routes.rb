Rails.application.routes.draw do
  # resources :reports only: [:index, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  resources :users, except: [:index, :show, :destroy] do
    resources :reports, only: [:index, :show, :create, :new]
    resources :histories, only: [:index, :show, :create, :new]
  end

  get '/signup' => 'users#new'
  get '/reports' => 'reports#show'
  get '/reports' => 'reports#index'
  get '/histories' => 'histories#show'
  get '/histories' => 'histories#index'

  namespace :admin do
    root to: 'users#index'
    get '/dashboard' => 'dashboard#index'
    resources :users, only: [:update, :index]
  end

  namespace :api do
    get '/users' => 'users#name'
    get '/users/count' => 'users#count'
    get '/users/age' => 'users#age'
    get 'users/breakdown' => 'users#breakdown'
    get '/users/:id/accuity' => 'reports#accuity'
    get '/reports/time' => 'reports#time'
  end

end
