Rails.application.routes.draw do
  scope '/api' do
    resources :users, only: [:index], defaults: { format: :json } do
      get :details, defaults: { format: :json }
      get :repos, defaults: { format: :json }
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
