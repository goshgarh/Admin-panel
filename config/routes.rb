Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :students
    resources :instructors
    resources :courses
    resources :cohorts
    resources :instructor_cohorts
    resources :student_cohorts
    root 'homes#index'
    
end

