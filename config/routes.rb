Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      post "/users", to: "users#create"
      post "/login", to: "auth#login"
      get "/finduser", to: "users#find_user"
    end
  end
  get "/properties", to: "properties#index"
end
