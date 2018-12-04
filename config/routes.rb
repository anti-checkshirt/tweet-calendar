Rails.application.routes.draw do

  root to: 'home#index'

  get '/tweet_carender/:id', to: 'tweet_carender#show', as: 'tweet'
  get '/upload', to: 'tweet_carender#upload'
end
