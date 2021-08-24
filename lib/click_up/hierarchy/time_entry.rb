# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries#{params[:assignee]}&#{params[:start_date]}&#{params[:end_date]}"
      end
    end
  end
end