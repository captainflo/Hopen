Rails.application.routes.draw do

  get 'pages/mention'
  get 'pages/team'
  get 'pages/contest'

  devise_for :users
  root to: "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
