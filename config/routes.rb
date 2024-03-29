Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  resources :articles do
    resources :comments
  end
end