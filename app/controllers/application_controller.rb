class ApplicationController < ActionController::Base
  protect_from_forgery

    before_filter :ensure_domain

    APP_DOMAIN = 'oldetownepizzabend.com'

    def ensure_domain
      true
    end
end
