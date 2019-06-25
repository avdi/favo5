Rails.application.routes.draw do
  root to: "canvasses#new"

  resources :candidates
  resources :priorities
  resources :canvasses do
    resources :votes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
