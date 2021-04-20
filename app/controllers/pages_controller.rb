class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home,:index] #what else we can see??

  def home
  end
end
