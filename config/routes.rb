Rails.application.routes.draw do
  devise_for :users

  resources :use, :path => 'asoberu/', :as => :main,  :only => [:index]

  root 'pages#index'
  get 'pages/show'


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resource :'map/asotop'
  resource :review
end
