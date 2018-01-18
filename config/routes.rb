Rails.application.routes.draw do
  root 'maps#index'
  get 'maps/show'

  devise_for :users
  resources :maps
  resources :users
  resources :reviews
  resources :coulmns

  end

  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'
  # root :controller => 'maps', :action => 'index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
