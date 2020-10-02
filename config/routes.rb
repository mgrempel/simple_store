Rails.application.routes.draw do
  get "products", action: :index, controller: "products"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
