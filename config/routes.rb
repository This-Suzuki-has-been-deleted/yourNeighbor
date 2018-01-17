Rails.application.routes.draw do
  devise_for :users


  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'

  resources :maps

   # resources :asoberu, :controller => :map, :path => 'asoberu', :only => [:creates]
  root :controller => 'maps', :action => 'index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
