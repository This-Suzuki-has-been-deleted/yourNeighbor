Rails.application.routes.draw do
  devise_for :users

  resources :asoberu ,:as =>'asoberu', :only => [:new], :path => 'asoberu/map'

  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
