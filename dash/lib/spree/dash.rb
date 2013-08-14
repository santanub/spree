require 'spree_core'
require 'httparty'

module Spree
  module Dash

  end
end

require 'spree/dash/engine'

Spree::Dash::Engine.config.to_prepare do
  Spree::BaseController.send :helper, 'spree/analytics'
end
