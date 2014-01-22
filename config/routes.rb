FreshbooksApi::Application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'projects', to: 'projects#index'
      get 'tasks', to: 'tasks#index'
      get 'staffs', to: 'staffs#index'
    end
  end

  root to: 'application#index'
end
