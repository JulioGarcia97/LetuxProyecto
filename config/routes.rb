Rails.application.routes.draw do

  resources :notices

  devise_for :users, path: '', path_names: {sign_up: 'register', sign_in: 'login', sign_out: 'logout'}

  resources :tasks do
  	resources :todo_tasks do
  		member do
  			patch :complete
  		end
  	end
  end

  get 'home', to: 'pages#home'

  get 'group', to: 'groups#index'

  root 'pages#bienvenido'
end
