Rails.application.routes.draw do
  resources :departments
  # get 'agency/index' => 'agency#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :employees
  resources :agencies
  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
  get '/employees', to: 'employees#index'
  post '/employees', to: 'employees#create'
  get '/agencies', to: 'agencies#index'
  get '/departments', to: 'departments#index'
  # match '/employees', to: 'employees#options', via: :options





end
