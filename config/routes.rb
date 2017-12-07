Rails.application.routes.draw do
  devise_for :users
  root 'pages#show'
  get 'pages/asotop'
  before_action:authenticate_user!
end
