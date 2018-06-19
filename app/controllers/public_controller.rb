class PublicController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :before_da_page
  
  def before_da_page
    @company = Company.first
    @sections = @company.sections

  end
end
