Rails.application.routes.draw do
  resources :urls, only: %w(create show), controller: :short_urls

  resource :urls, only: %w() do
    get ':id/stats' => 'short_urls#stats'
  end
end
