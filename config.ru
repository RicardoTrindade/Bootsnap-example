# frozen_string_literal: true

require 'hanami/api'
require 'hanami/controller'

require_relative 'lib/app'

App.finalize!

app = Rack::Builder.new do
  run Web::Router.new
end.to_app

Rack::Handler.default.run(app, Port: 3000)
