# frozen_string_literal: true

module Web
  module Endpoints
    # Ready endpoint
    class Ready < Hanami::Action

      def call(_)
        render({}, 200)
      end
    end
  end
end
