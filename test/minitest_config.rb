# -*- ruby encoding: utf-8 -*-

gem 'minitest'

require 'rack/test'
require 'rack/mock'
require 'minitest/autorun'
require 'minitest/focus'
require 'minitest/moar'
require 'minitest/bisect'

require 'request_store'
require 'marlowe'

class RackApp
  def call(env)
  end

  def coordination_id
    RequestStore[:correlation_id]
  end
end
