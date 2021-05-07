Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#like" #поставить лайк и идем на контроллер  постолайк(post-controller def like)
    end
  end  
  root 'posts#index'
  get 'static_pages/index'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
