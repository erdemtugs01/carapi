Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:passwords], controllers: {
        sessions: 'api/v1/auth/sessions'
      }

      resources :vehicles do
        resources :vehicle_services, only: [:index, :show]
      end

      resources :citizens do
        resources :vehicles, only: :index
      end
    end
  end

end
