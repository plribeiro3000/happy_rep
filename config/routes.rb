HappyRep::Application.routes.draw do
  resources :tasks

  resources :animals

  resources :employees

  resources :loans

  resources :restitutions

  resources :events

  resources :books

  resources :bills

  resources :admins

  resources :residents

  resources :users, :only => [ :index, :show, :destroy ]

  devise_for :users, :path => '/'

  root :to => "root#index"
end