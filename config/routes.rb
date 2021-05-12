Rails.application.routes.draw do

  root :to => 'club#index'

  # get '/clubs', to: 'club#index'

  constraints subdomain: 'api' do
    get '/clubs', to: 'club#index'
  end

end
