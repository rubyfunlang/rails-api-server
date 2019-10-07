Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'linear', to: 'linear#linear'
      post 'quadratic', to: 'quadratic#quadratic'
    end
  end
end
