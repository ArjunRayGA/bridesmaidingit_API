# frozen_string_literal: true
Rails.application.routes.draw do
  resources :todos
  resources :projects
  resources :events
  resources :examples, except: [:new, :edit]
  post '/events/' => 'events#create'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
