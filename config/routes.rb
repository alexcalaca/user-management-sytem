Rails.application.routes.draw do
  devise_for :users
  resources :users 
  resources :searches

  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      # Resources here
    end
  end

  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root "static_pages#homepage"  
  get 'contact', to: 'static_pages#contact'
end
