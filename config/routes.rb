Rails.application.routes.draw do
  devise_for :users
  root 'pages#show'
  get 'pages/index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
