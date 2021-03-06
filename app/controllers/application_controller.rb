class ApplicationController < ActionController::Base
  before_action :set_locale

  include SessionsHelper

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
