# frozen_string_literal: true

module Web
  # Web Router
  class Router < Hanami::API

    get '/ready', to: Web::Endpoints::Ready.new, as: :ready
  end
end
