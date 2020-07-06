Rails.application.routes.draw do

  namespace :api do
    get "/shoes" => "shoes#index"
    get "/shoes/:id" => "shoes#show"
    post "/shoes" => "shoes#create"
    patch "/shoes/:id" => "shoes#update"
    delete "/shoes/:id" => "shoes#destroy"
  end

end
