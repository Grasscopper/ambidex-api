Rails.application.routes.draw do
  root 'welcome#index'
  resources :characters, only: [:index]
end
