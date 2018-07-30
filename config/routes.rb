Rails.application.routes.draw do
  scope module: :deals do
    resources :rent_boats, only: %i[new create]
  end
end
