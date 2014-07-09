Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  #resources :homes

  get 'events', to: "homes#events"
  get 'contact_us', to: "homes#contact_us"
  get 'management_info', to: "homes#management_info"
  get 'amenities', to: "homes#amenities"
  get 'get_involved', to: "homes#get_involved"
  get 'rules', to: "homes#rules"
  post 'user_info', to: "homes#add_user_information"
end
