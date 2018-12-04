Rails.application.routes.draw do
  # Front-End Routing
  root "default#index"

  # Courses Routing
  get '/courses', to: "courses#index"
  get '/courses/:course_slug', to: "courses#course"
  get '/courses/:course_slug/:topic_slug', to: "courses#topic"
  get '/courses/:course_slug/:topic_slug/:lesson_slug', to: "courses#lesson"
  get '/courses/:course_slug/:topic_slug/:lesson_slug/:slug', to: "courses#chapter"

  resources :chapters, only: [:detail] do
    resources :comments, only: [:create] do
      resources :replies, only: [:create]
    end
  end

  # Log Routing
  post '/logs/:id', to: "logs#create"

  # Follow Routing
  post '/follows/:id', to: "follows#create"
  delete '/follows/:id', to: "follows#destroy"

  # Examination Routing
  get '/examination', to: "examination#index"

  # Search Courses Routing
  get 'search', to: 'search#index'

  # Back-End Routing
  namespace :acp do
    get '/', to: "main#index"

    resources :topics do
    end
  end

  # Authenticator
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations", passwords: "users/passwords" }
  devise_for :admins, controllers: { sessions: "admins/sessions", registrations: "admins/registrations", passwords: "admins/passwords" }

  # User Account Routing
  get '/account/:username', to: "account#edit"
  patch '/account/:username', to: "account#update"

  get '/:username', to: "account#index"
  get '/settings/profile', to: "account#user"
  get '/settings/password', to: "account#password"
end