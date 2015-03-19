Omei::Application.routes.draw do
  comfy_route :cms_admin, :path => '/cms-admin'

  #mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'
  devise_for :employees, :skip => [:registrations]
    as :employee do
      get '/employees/edit' => 'devise/registrations#edit', :as => 'edit_employee_registration'
      put 'employees' => 'devise/registrations#update', :as => 'employee_registration'
    end
  #devise_for :users, :controllers => {:passwords => 'TravelWebsite::passwords', :sessions => 'TravelWebsite::sessions123'}
  devise_for :users

  mount TravelWebsite::Engine, :at => '/'
  mount TravelAdmin::Engine, :at => 'omeiadmin'
  get :omeiadmin, :to => 'travel_admin/home#index'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
