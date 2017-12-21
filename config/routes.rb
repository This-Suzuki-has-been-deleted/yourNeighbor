Rails.application.routes.draw do
  devise_for :users

  resource :map do
    get 'new', :as => :top_Page
  end

  root 'pages#index'
  get 'pages/show'


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
