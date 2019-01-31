Rails.application.routes.draw do
  devise_for :women, controllers: {
          sessions: 'women/sessions',
          passwords: 'women/passwords',
          registrations: 'women/registrations',
          omniauth_callbacks: 'women/omniauth_callbacks'
        }
  devise_for :men, controllers: {
        sessions: 'men/sessions',
        passwords: 'men/passwords',
        registrations: 'men/registrations',
        # omniauth_authorize: '/my_engine/users/auth/men/facebook',
        # omniauth_callbacks: 'men/omniauth_callbacks'
      }

  get "cast/:id",to: "cast#show",as: "cast_mypage"
  get "cast/:id/edit",to: "cast#edit",as: "cast_edit"
  patch "cast/:id/update",to: "cast#update",as: "cast_update"
  get "cast/:id/profile",to: "cast#profile",as: "cast_profile"

  get "men/casts_index",to: "posts#casts_index",as: "casts_index"
  get "men/:id",to: "posts#show",as: "men_mypage"
  get "men/:id/edit",to: "posts#edit",as: "men_edit"
  patch "men/:id/update",to: "posts#update",as: "men_update"
  get "men/:id/profile",to: "posts#profile",as: "men_profile"
  resources :reseves
  get "men/:id/reseves_index",to: "reseves#reseves_index",as: "men_reseves"


  root 'home#top'
  get 'home/cast_top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
