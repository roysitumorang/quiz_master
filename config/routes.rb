Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :quizzes, only: [:index, :show] do
    patch :answer, on: :member
  end
  root to: 'quizzes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
