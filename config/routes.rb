Rails.application.routes.draw do
  resources :positions


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => "visitors#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  
end
