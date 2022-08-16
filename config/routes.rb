Rails.application.routes.draw do
  root "static_pages#homepage"  
  get 'contact', to: 'static_pages#contact'
end
