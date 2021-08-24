# frozen_string_literal: true

module ClickUp
  module APIOperations
    module All
      def all(params={})
        execute_request(:get, index_path(params), data)
      end
    end
  end
end