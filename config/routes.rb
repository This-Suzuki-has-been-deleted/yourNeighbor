Rails.application.routes.draw do
  devise_for :users


  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'

  # resource :maps do
  #   get 'asotop', :as => :top_Page
  # end

  ? resources :asoberu, :controller => :map, :path => 'asoberu', :only => [:creates]

   root :controller => 'pages', :action => 'index'
   get "asotop" => "map#asotop"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
