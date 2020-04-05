# # frozen_string_literal: true
#
# require 'jets'
# require 'jets/application'
#
# # Make sure the ActionDispatch::ShowExceptions middleware is always enabled,
# # regardless of what is in config/environments/test.rb
# # Instead we are overriding ActionDispatch::ShowExceptions to be able to
# # toggle whether or not exceptions are raised.
#
# module Cucumber
#   module Jets
#     module Application
#       def initialize!
#         ad = config.action_dispatch
#
#         def ad.show_exceptions
#           true
#         end
#
#         super
#       end
#     end
#   end
# end
#
# Jets::Application.prepend(Cucumber::Jets::Application)
