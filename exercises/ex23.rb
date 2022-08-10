class ApplicationController < ActionController::Base #What is a class?
    include Pundit
  
    class_attribute :class_auth_manager
  
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    # protect_from_forgery with: :null_session
  
    before_action :require_site_uuid
    before_action :authenticate
    before_action :preauthorize
  
    rescue_from(ActiveRecord::RecordNotFound) do |e|
      backtrace = Rails.backtrace_cleaner.clean( e.backtrace )
      Rails.logger.debug e.class
      Rails.logger.debug backtrace.split(", ").join("\n")
      render_status 404
    end
  
    rescue_from(Pundit::NotAuthorizedError) do
      render_status 403
    end
  
    # Method called by any endpoint to render a JSON response using the
    # BaseSerializer construct.
    def render_json(args={})
      opts = BuildOptsForRenderJSON.call(args)
      return render(opts)
    end
  
    def set_cookie cookie_name, value:, expires:, domain:
      cookies[cookie_name] = {
        value:    value,
        expires:  expires,
        domain:   domain,
        httponly: true,
        secure:   secure_cookies?,
      }
    end
  
    private
  
    def secure_cookies?
      !(Rails.env.development? || Rails.env.test?)
    end
  
    # Don't waste any bandwidth replying to Lead Router;
    # it only cares about the status code
    def render_status(status_code)
      render body: nil, status: status_code
    end
  
    ##### Before actions #####
  
    # All requests MUST provide site UUID in headers, or get a 404.
    # (Well, except for V1::LeadRouterController.)
    def require_site_uuid
      value = request.headers["X-Site-UUID"] || params["X-Site-UUID"]
      if value.blank? || value =~ /^undefined$/i
        render plain: "missing 'X-Site-UUID' header", status: 404
      end
      session[:last_site_uuid] = value
    end
  
    # There are a number of behaviors that can vary based on the
    # authentication mechanism.  The front end uses OAuth and fetches
    # permissions from Locutus, whereas Lead Manager has an API token and
    # doesn't check individual user permissions (on the assumption that LM
    # is making its features available to the appropriate users there).
    #
    # As such, those details have been extracted to an AuthManager.
    def auth_manager
      @auth_manager ||= AuthManager.for(controller: self, session: session)
    end
  
    # And here's the list of AuthManager methods we provide as part of the
    # (private) interface for all controllers in this app.
    def authenticate      ; auth_manager.authenticate      ; end
    def preauthorize      ; auth_manager.preauthorize      ; end
    def current_site_uuid ; auth_manager.current_site_uuid ; end
    def current_company   ; auth_manager.current_company   ; end
    def current_user      ; auth_manager.current_user      ; end
  
    def bounce_to_authserv
      response.headers['WWW-Authenticate'] = '/auth/realgeeks'
      render body: nil, status: 401
    end
  
    def redirect_to_authserv
      RG::Authserv.prepare_session session
      auth_url = RG::Authserv.build_authorize_url(
        session:      session,
        callback_url: authserv_callback_url,
      )
      redirect_to auth_url
    end
  
  end
  