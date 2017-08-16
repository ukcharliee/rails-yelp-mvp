Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      get "category", to: "restaurants#category"
    end

    resources :reviews, only: [:new, :create]
  end
  root :to => redirect('/restaurants')
end
