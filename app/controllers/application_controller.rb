class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @todews = Todew.all
  end
end