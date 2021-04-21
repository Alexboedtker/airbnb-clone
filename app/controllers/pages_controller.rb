class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home,:index, :show] #what else we can see??

  def home
  end

  def index
  end

  def show
  end
end
