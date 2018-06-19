Rails.application.routes.draw do
  resources :mail_contacts
  devise_for :users
  get 'single/index'
  post 'single/send_email'
  resources :entry_pages
  resources :sections
  resources :companies

  root "single#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
