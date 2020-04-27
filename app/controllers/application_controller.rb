class Member::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:username, :email])
    permit(:account_update, keys: [:username, :email])
  end
end

class ApplicationController < ActionController::Base

 protected

 def devise_parameter_sanitizer
   if resource_class == Member
     Member::ParameterSanitizer.new(Member, :member, params)
   else
     super # Use the default one
   end
 end
end
