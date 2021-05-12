Rails.application.routes.draw do

  constraints subdomain: 'api' do
    get '/clubs', to: 'club#index'
  end

end
