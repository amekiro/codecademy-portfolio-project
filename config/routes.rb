Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#welcome', as: :welcome
  get '/gallery' => 'pages#gallery', as: :gallery
  get '/about' => 'pages#about', as: :about
  
  resources :design
  get '/design' => 'design#index'
  get '/design/:id' => 'design#show'

  resources :three_d
  get '/three_d/:id' => 'three_d#show'

  resources :illustration
  get '/illustration/:id' => 'illustration#show'

  resources :photograph
  get '/photograph/:id' => 'photograph#show'
end
