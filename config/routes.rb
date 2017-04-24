Rails.application.routes.draw do
  resources :listings

  root to: 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",  :registrations => "registrations" }
  resources :users, only: [:show]

  # パラメーターを必要としない(特定のID）を必要としないアクションのためcollectionを使う
  resources :photos, only: [:create, :destroy] do
    collection do
      get :list
    end
  end

  get 'manage_listing/:id/basics' => 'listings#basics', as: 'manage_listing_basics'
  get 'manage_listing/:id/description' => 'listings#description', as: 'manage_listing_description'
  get '/manage_listing/:id/address' => 'listings#address', as: 'manage_listing_address'
  get '/manage_listing/:id/price' => 'listings#price', as: 'manage_listing_price'
  get '/manage_listing/:id/photo' => 'listings#photo', as: 'manage_listing_photo'
  get '/manage_listing/:id/calender' => 'listings#calender', as: 'manage_listing_calender'
  get '/manage_listing/:id/bankaccount' => 'listings#bankaccount', as: 'manage_listing_bankaccount'
  get '/manage_listing/:id/publish' => 'listings#publish', as: 'manage_listing_publish'

end