Rails.application.routes.draw do

  root :to => 'clubs#index'

  constraints subdomain: 'api' do
    resources :clubs
    # get '/clubs', to: 'clubs#index'
    # get '/clubs/:id', to: 'clubs#show'
  end

end
