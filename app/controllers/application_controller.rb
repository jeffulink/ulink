class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?
  
  def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  private

  def get_jira_client

    # add any extra configuration options for your instance of JIRA,
    # e.g. :use_ssl, :ssl_verify_mode, :context_path, :site
    options = {
      :private_key_file => "rsakey.pem",
      :consumer_key => 'test'
    }

    @jira_client = JIRA::Client.new(options)

    # Add AccessToken if authorised previously.
    if session[:jira_auth]
      @jira_client.set_access_token(
        session[:jira_auth]['access_token'],
        session[:jira_auth]['access_key']
      )
    end
  end

end
