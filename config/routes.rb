Rails.application.routes.draw do
  root "static_pages#homepage"
  get 'static_pages/homepage'
  get 'static_pages/contact'  
end
