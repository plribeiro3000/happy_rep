HappyRep::Application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :users, :only => [ :index, :show, :destroy ]
  end

  root :to => "root#index"
end