Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "numbers#index"
  get '/funny_fact/:number', to: 'numbers#funny_fact'
end
