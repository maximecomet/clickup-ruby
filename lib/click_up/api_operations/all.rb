# frozen_string_literal: true

module ClickUp
  module APIOperations
    module All
      def all(params={})
        execute_request(:get, index_path(params), {assignee:4548151, start_date:1614009658858, end_date:1614019658858})
      end
    end
  end
end