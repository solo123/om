class ApplicationController < ActionController::Base
  protect_from_forgery
  helper TravelWebsite::ApplicationHelper
  layout :layout_by_resource

  APP_CONFIG = Redis.new(:host => 'localhost', :port => 6379)

  def layout_by_resource
    if devise_controller? && resource_name == :employee
      "travel_admin/login"
    else
      "travel_website/application"
    end
  end
end
