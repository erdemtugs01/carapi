Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      resources :vehicles do 
        resources :vehicle_services, only: [:index, :show]
      end
      resources :citizens do
        resources :citizen_vehicles, only: :index
      end
    end
  end

end
