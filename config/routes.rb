Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #users
    post "/users", controller: "users", action: "create"
    get "/users", controller: "users", action: "index"

    #sessions
    post "/sessions", controller: "sessions", action: "create"
  end
end
