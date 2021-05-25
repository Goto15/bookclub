Rails.application.routes.draw do

  root :to => 'clubs#index'

  constraints subdomain: 'api' do
    resources :clubs
    resources :members
  end

end
