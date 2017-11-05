Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/dashboard", to: "pages#dashboard", as: :dashboard

  get "/customerapp", to: "pages#customerapp", as: :customerapp

  get "/driverapp", to: "pages#driverapp", as: :driverapp


  root to: "pages#home"
end
