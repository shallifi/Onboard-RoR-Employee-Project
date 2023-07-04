Rails.application.routes.draw do
  resources :departments
  # get 'agency/index' => 'agency#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :employees do
    resources :needs, controller: 'employees_needs', only: [:index, :create, :destroy]
  end
  resources :agencies
  # Defines the root path route ("/")
  # root "articles#index"
  get '/hello', to: 'application#hello_world'
  get '/employees', to: 'employees#index'
  get '/employees/:id', to: 'employees#show'
  post '/employees', to: 'employees#create'
  get '/agencies', to: 'agencies#index'
  get '/departments', to: 'departments#index'
  get 'offices', to: 'offices#index'
  get '/needs', to: 'needs#index'
  get '/titles', to: 'titles#index'
  get '/titles/:id', to: 'titles#show'
  get '/employees_needs', to: 'employees_needs#index'
  # get '/departments/:agency_id', to: 'departments#index'
  # get '/departments/:agency_id/:id', to: 'departments#show' 
  get '/departments/agency/:agency_id', to: 'departments#by_agency'
  get '/employees/:employee_id/needs', to: 'employees_needs#index'
  post '/employees/:employee_id/needs', to: 'employees_needs#create'
  delete '/employees/:employee_id/needs/:need_id', to: 'employees_needs#destroy'
  # match '/employees', to: 'employees#options', via: :options

end
