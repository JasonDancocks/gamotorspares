Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'
  get '/contact', to: 'messages#contact'
  get '/scrap', to: 'messages#scrap'
  get '/parts', to: 'messages#parts'
    
  resources :messages, only: [:create]
end
