Rails.application.routes.draw do

  get 'search/index'
  
  root to: 'home#index'
  
  get '/search/:id', to: 'search#show'
  
  get '/upload', to: 'tweet_carender#upload'
  
  post '/import', to: 'tweet_carender#import'
  
end
