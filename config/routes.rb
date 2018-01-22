Rails.application.routes.draw do
  root 'maps#index'
  get 'maps/show'

  devise_for :users
  resources :maps do
    collection { get "search"}
  end
  resources :users
  resources :reviews
  resources :columns

  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'
  # root :controller => 'maps', :action => 'index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
