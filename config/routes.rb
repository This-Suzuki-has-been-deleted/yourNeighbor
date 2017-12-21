Rails.application.routes.draw do
  devise_for :users

  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'

  # resource :maps do
  #   get 'asotop', :as => :top_Page
  # end

  resources :maps, :controller => :map, :path =>'maps'

  root 'pages#index'
   get 'pages/show'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
