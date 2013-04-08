Omei::Application.routes.draw do
  devise_for :employees, :skip => [:registrations]
    as :employee do
      get '/employees/edit' => 'devise/registrations#edit', :as => 'edit_employee_registration'
      put 'employees' => 'devise/registrations#update', :as => 'employee_registration'
    end
  devise_for :users, :controllers => {:passwords => 'passwords'}

  mount TravelWebsite::Engine, :at => '/'
  mount TravelAdmin::Engine, :at => 'omeiadmin'
  match '/omeiadmin', :to => 'travel_admin/home#index', :as => :omeiadmin
end