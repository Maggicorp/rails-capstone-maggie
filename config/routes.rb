# frozen_string_literal: true
Rails.application.routes.draw do
  resources :poems, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  get '/published' => 'poems#published'
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
