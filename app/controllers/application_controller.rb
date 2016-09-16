class ApplicationController < ActionController::Base
  helper AuthenticationHelper
  # protect_from_forgery with: :exception
end
