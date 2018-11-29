Rails.application.routes.draw do

  # useridからtweetを取得する
  get '/tweet/:id', to: 'tweets#show'

  # CSVファイルのアップロード
  namespace :tweet do
    resources :file, only:[:new, :show, :create]
  end


end
