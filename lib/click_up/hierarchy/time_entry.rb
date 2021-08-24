# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries"
      end

      def rejected_params
        [
          :id,
          :team_id
        ]
      end

      def formatted_params(params)
        params.reject {|key, _| rejected_params.include?(key) }
      end
    end
  end
end