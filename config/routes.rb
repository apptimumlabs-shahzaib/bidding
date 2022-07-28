Rails.application.routes.draw do
  devise_for :users
  resources :bids
  resources :products
  devise_scope :user do
    authenticated :user do
      root 'products#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  get "/bids" ,to: "bids#index"
  get "/products" ,to: "products#index"
  get "/bids/:id" ,to: "bids#show"
  post '/bids' ,to: 'bids#create'
  post '/products' ,to: 'products#create'
  get "/products/:id" ,to: "products#show"
  get "/myproducts" ,to: "products#myproducts"
  get '/products/new',to: 'products#new'
  get '/bids/new',to: 'bids#new'
end
