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
resources :answer
# #question
  get 'questions/index'
  get 'question/show/:id' => 'question#show', as: :question_show
  post 'question/create' => 'question#create'
  delete 'question/delete/:id' => 'question#delete', as: :question_delete
  get 'question/new' => 'question#new'
#answer
  post 'answer/create' => 'answer#create', as: :answer_create
  delete 'answer/delete/:id' => 'answer#delete', as: :answer_delete
end
