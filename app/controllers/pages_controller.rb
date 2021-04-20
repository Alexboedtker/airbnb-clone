class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home #what else we can see??

  def home
  end
end
