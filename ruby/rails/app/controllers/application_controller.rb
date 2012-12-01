class ApplicationController < ActionController::Base
  protect_from_forgery

  http_basic_authenticate_with :name => CONFIG.admin_name, :password => CONFIG.admin_password, :except => [:index, :show]

  protected

  def raise_404
    raise ActionController::RoutingError.new('Not Found')
  end
end
