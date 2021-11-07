class ApplicationController < ActionController::API
  # Include Modules
  include Response
  include ExceptionHandler
  include Pundit
end
