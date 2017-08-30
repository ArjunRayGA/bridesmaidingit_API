# frozen_string_literal: true
Rails.application.routes.draw do
  resources :todos
  resources :projects
  resources :events
  post '/events/' => 'events#create'
  get '/event/:id' => 'event#show'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :examples, except: [:new, :edit]
  resources :users, only: [:index, :show]
end
