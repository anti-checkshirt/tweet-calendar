Rails.application.routes.draw do

  root to: 'tweet_carender#index'

  get '/tweet_carender/:id', to: 'tweet_carender#show', as: 'tweet'
  get '/tweet_carender' => 'tweet_carender#index'

end
