Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'
  get 'pages/show'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
