Rails.application.routes.draw do

  root to: 'home#index'

  get '/search/:id', to: 'search#show'

  # get '/tweet_carender/:id', to: 'tweet_carender#show', as: 'tweet'

end
