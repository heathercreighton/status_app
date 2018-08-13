class ApplicationController < ActionController::Base

	include Response
  include ExceptionHandler
  protect_from_forgery unless: -> { request.format.json? }
end
