Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#welcome', as: :welcome
  get '/gallery' => 'pages#gallery', as: :gallery
  get '/about' => 'pages#about', as: :about
end
