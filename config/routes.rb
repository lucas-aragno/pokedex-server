Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :cards
  resources :wishlist
  resources :users do
    resources :card_collections
  end
end
