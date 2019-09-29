class WelcomeController < ApplicationController
  def index
    flash[:success] = "Welcome to Interview Sun*"
  end
end
