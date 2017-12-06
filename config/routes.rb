Rails.application.routes.draw do
  devise_for :users
  root 'pages#show'
  get 'pages/asotop'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
