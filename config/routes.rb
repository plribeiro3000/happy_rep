HappyRep::Application.routes.draw do
  resources :animals


  resources :events

  resources :books

  resources :bills

  resources :users, :only => [ :index, :show, :destroy ]

  devise_for :users, :path => '/'

  root :to => "root#index"
end