Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :blogs
      resources :comments
      resources :users, only: [:index, :create, :update]
      resources :auth
    end
  end

end
