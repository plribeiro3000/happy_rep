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

  resources :formers

  resources :aggregates

  devise_for :users, :path => '/'

  root :to => "root#index"

  get 'event_report' => 'report#events'
end