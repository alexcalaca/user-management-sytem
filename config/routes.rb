Rails.application.routes.draw do
  devise_for :users
  resources :users 
  resources :searches

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root "static_pages#homepage"  
  get 'contact', to: 'static_pages#contact'
end
