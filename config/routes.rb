Rails.application.routes.draw do
  
  root to: 'home#index'
  
  get '/search/:id', to: 'search#index'
  
  get '/upload', to: 'tweet_carender#upload'
  
  post '/import', to: 'tweet_carender#import'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      namespace :search do
        get '/' => 'search#index', only: :index, controller: :search
      end
    end
  end
  
end
