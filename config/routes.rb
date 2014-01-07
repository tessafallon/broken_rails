Blog::Application.routes.draw do
  # get "/kiwis", to: "kiwis#index"
  # get "/kiwis/new", to: "kiwis#new"
  # post "/kiwis/post", to: "kiwis#create"
  # get "/kiwis/:id", to: "kiwis#show"
  # # delete "/kiwis/:id", to: "kiwis#delete"
  resources :kiwis
end