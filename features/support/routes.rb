# require 'action_controller'
# require 'action_dispatch'
#
# ActionDispatch::Integration::Session.class_eval do
#   def get_named_route(name)
#     case name
#     when 'my profile'
#       "/users/#{request.session[:user]}"
#     else
#       send(name.gsub(' ', '_') + '_path')
#     end
#   end
# end
