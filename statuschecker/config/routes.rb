Rails.application.routes.draw do
  root to: 'services#index'
    resources :services do |variable|
    resources :pings, only: [:new, :create]
  end
  resources :pings, only: [ :destroy ]
end

wheneverize .
