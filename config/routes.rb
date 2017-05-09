Rails.application.routes.draw do
  devise_for :users,controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'pages/mention'
  get 'pages/team'
  get 'pages/db' => 'pages#index', as: :users



  root to: "pages#home2"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
