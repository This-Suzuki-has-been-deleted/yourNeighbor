Rails.application.routes.draw do
  root 'maps#index'
  get 'maps/show'

  resources :maps do
    collection { get "search"}
  end
  resources :users
  resources :reviews
  resources :columns
  resources :questions

  # resources :maps, :only => [:new, :create, :edit, :update]
  #  get'maps/new' => 'maps/new#new'
  # root :controller => 'maps', :action => 'index'

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users
}
# #question
  # get 'questions/index'
  # get 'questions/show/:id' => 'questions#show', as: :questions_show
  # post 'questions/create' => 'questions#create'
  delete 'questions/delete/:id' => 'question#delete', as: :question_delete
  # get 'questions/new' => 'questions#new'
#answer
  post 'answer/create' => 'answer#create', as: :answer_create
  delete 'answer/delete/:id' => 'answer#delete', as: :answer_delete
end
