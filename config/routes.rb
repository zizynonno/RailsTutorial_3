Rails.application.routes.draw do
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  post  '/signup',  to: 'users#new'
  get  '/login',   to: 'sessions#new' #new->新しいセッションのページ
  post  '/login',   to: 'sessions#create' #create->新しいセッションの作成
  delete  '/logout',   to: 'sessions#destroy'
  resources :users
end