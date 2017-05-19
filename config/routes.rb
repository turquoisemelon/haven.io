Rails.application.routes.draw do
  # resources :reports only: [:index, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'

  # post '/reports/new' => 'reports#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get 'user/:user_id/reports' => 'reports#index'

  resources :user do
    root to: 'users#index',  as: 'user'
    resources :reports, only: [:index, :show, :create, :new]
end

  namespace :admin do
    root to: 'users#index'
    get '/dashboard' => 'dashboard#index'
    get '/users' => 'users#index'
    put '/user/:id' => 'users#update'
  end

end
