Rails.application.routes.draw do
  devise_for :users


  resources :asoberu, :as => :asoberu, :path => 'asoberu/map' ,:only => [:new]



  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
