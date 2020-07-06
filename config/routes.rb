Rails.application.routes.draw do

  namespace :api do
    get "/shoes" => "shoes#index"
  end

  namespace :api do
    get "/shoes/:id" => "shoes#show"
  end
  
end
