Rails.application.routes.draw do
  get '/' => 'pairings#index'
  
  namespace :api do
    namespace :v1 do
      get '/pairings' => 'pairings#index'
      post '/pairings' => 'pairings#create'
      get '/pairings/:id' => 'pairings#show'
      patch '/pairings/:id' => 'pairings#update'
      delete '/pairings/:id' => 'pairings#destroy'
    end

     namespace :v2 do
      get '/pairings' => 'pairings#index'
      post '/pairings' => 'pairings#create'
      get '/pairings/:id' => 'pairings#show'
      patch '/pairings/:id' => 'pairings#update'
      delete '/pairings/:id' => 'pairings#destroy'
    end
  end
end
