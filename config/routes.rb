Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  root "top#index"
  resources :users, only: :show do
    resources :statuses, only: [:index]
  end

  resources :statuses, only: [:new, :create, :edit, :update]
  resources :groups, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
