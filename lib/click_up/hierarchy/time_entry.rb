# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries"
      end
    end
  end
end