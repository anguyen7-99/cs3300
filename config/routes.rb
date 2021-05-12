Rails.application.routes.draw do
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  devise_for :users
  root "projects#index"
  resources :projects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
