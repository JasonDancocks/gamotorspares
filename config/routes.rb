Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/scrap', to: 'static_pages#scrap'
  get '/partrequest', to: 'static_pages#partrequest'

  resources :messages, only: [:new, :create]
end
