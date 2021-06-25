Rails.application.routes.draw do
  root 'welcome#index'
  resources :ambidexes, only: [:index, :show]
end
