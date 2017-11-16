Rails.application.routes.draw do

  #change startup view
  root :to => 'products#index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :products
end
