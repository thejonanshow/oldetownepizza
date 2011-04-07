class ApplicationController < ActionController::Base
  protect_from_forgery

    before_filter :ensure_domain

    APP_DOMAIN = 'oldetownepizzabend.com'

    def ensure_domain
      if request.env['HTTP_HOST'] != APP_DOMAIN
        redirect_to "http://#{APP_DOMAIN}", :status => 301
      end
    end
end
