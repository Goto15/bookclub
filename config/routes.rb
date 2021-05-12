Rails.application.routes.draw do

  root :to => 'club#index'

  constraints subdomain: 'api' do
    get '/clubs', to: 'club#index'
    get '/clubs/:id', to: 'club#show'
  end

end
