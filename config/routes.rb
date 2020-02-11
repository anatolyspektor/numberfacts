Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "numbers#index"
  post '/funny_fact', to: 'numbers#funny_fact'
end
