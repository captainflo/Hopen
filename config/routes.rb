Rails.application.routes.draw do

  get 'pages/mention'
  get 'pages/team'
  get 'pages/contest'

  devise_for :users
  devise_scope :user do
  authenticated :user do
    root 'pages#contest', as: :authenticated_root
  end
  unauthenticated do
    root 'pages#home', as: :unauthenticated_root
  end
end

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
