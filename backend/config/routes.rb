Rails.application.routes.draw do

  root :to => 'clubs#index'

  constraints subdomain: 'api' do
    # ----- MEMBER ROUTES ----- #
    get "/members/:id", to: "members#show"
    get "/members/:id/books", to: "members#member_books"

    # ----- RESOURCES ----- #
    resources :clubs
    resources :members
    resources :books
    resources :meetings

  end

end
