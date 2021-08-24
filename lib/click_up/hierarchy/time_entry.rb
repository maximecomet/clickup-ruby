# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries"
      end
      def data(params={})
        d=Hash.new
        d[:assignee]=params[:assignee]
        d[:start_date]=params[:start_date]
        d[:end_date]=params[:end_date]
        return d
      end
    end
  end
end