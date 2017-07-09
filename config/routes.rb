Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'pages/home'
  get 'patents/index'
  get 'pages/demo'
  resources :patents do
  	resources :keywords
  	resources :descriptions
  end
end
