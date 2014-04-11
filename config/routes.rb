Rails.application.routes.draw do
  #resources :homes

  root 'homes#index'
  get 'events', to: "homes#events"
  get 'contact_us', to: "homes#contact_us"
  get 'management_info', to: "homes#management_info"
end
