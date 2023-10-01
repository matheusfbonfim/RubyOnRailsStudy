class ApplicationController < ActionController::Base
  layout :layout_by_resource
  before_action :check_pagination

  private

  def layout_by_resource
    devise_controller? ? "#{resource_class.to_s.downcase}_devise" : 'application'
  end

  def check_pagination
    unless user_signed_in?
      params.extract!(:page, :per_page)
    end
  end
end
