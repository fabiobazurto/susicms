class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :before_da_page
  before_action :authenticate_user!
  def before_da_page
    @company = Company.first
    @sections = @company.sections

  end
end
