# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  before_filter :manage_version
  
    
  
  def manage_version
    # for each new session, check the app's last version and toggle
    # keep same version for all requests by this session
   
    version_array = ["navy", "maroon"]
    if !session[:sess_version]    
		if !$last_version # first time through, app just started
		  this_version = 0
		else # do toggle
			if $last_version == 0 
			  this_version = 1
			else
			  this_version = 0
			end
		end
		$last_version = this_version
		session[:sess_version] = version_array[this_version]
		session[:sess_idx] = this_version.to_i
		puts "created a new session version: " + session[:sess_version]
		puts "sess idx:" + session[:sess_idx].to_s

    else 
      puts "there is an existing session version: " + session[:sess_version]
	end
	

  end
  
end
