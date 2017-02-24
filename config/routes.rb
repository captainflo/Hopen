Rails.application.routes.draw do
  devise_for :users,controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'pages/mention'
  get 'pages/team'
  get 'pages/contest'
  get 'pages/db' => 'pages#index', as: :users

  devise_scope :user do
  get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
  get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # user go directly to page contest after connect
  # authenticated :user do
  #   root 'pages#contest', as: :authenticated_root
  # end
  unauthenticated do
    root 'pages#home', as: :unauthenticated_root
  end
end

  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
