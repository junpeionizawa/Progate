Rails.application.routes.draw do

  get 'result/top'
  namespace :admin do
   resources :users,only: [:index,:show,:edit,:update,:destroy]
   resources :sections,only: [:index,:show,:destroy,:new,:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root 'root#top'
   resources :users,only: [:index,:show,:show, :edit, :update, :destroy]
   resources :questions,only: [:new,:show,:create,:index]
   resources :sections, only:  [:show, :edit,:index,:new,:create,:destroy]
   resources :redos, only: [:index, :show, :edit, :destory]
   resources :scores, only: [:show,:new,:create,:index]
   resources :choices,only: [:new,:create]

end
