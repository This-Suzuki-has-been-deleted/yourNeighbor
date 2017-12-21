Rails.application.routes.draw do
  devise_for :users

  resources :users, :as => :asoberu

  resources :users, :only => [:index] , :as => :asoberu


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
