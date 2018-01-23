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

#question
  get 'boards/index'
  get 'boards/show/:id' => 'boards#show', as: :boards_show
  post 'boards/create' => 'boards#create'
  delete 'boards/delete/:id' => 'boards#delete', as: :board_delete
  get 'boards/new' => 'boards#new'
#answer
  post 'questions/create' => 'question#create', as: :question_create
  delete 'questions/delete/:id' => 'question#delete', as: :question_delete
end
