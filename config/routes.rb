Rails.application.routes.draw do

  namespace :api do
    get "/shoes" => "shoes#index"
  end
end
