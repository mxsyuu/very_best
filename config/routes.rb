Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    scope module: 'api/v1', as: 'api' do
      resources :cuisines

      resources :likes

      resources :dishes

      resources :venues

      resources :users

    end
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root :to => "users#index"
  resources :cuisines
  resources :likes
  resources :dishes
  resources :venues
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
