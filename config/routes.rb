Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reviews, only: [:new, :create]  
  resources :products, only: :show do
    collection do
      get 'search'
    end
   end
   
  root 'products#index'

end

