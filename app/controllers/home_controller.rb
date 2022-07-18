class HomeController < ApplicationController
  skip_before_action :authorize, only: %i{index}
  
  def index
  end
end
