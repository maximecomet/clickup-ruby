# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries"
      end
      def data(params={})
        data={}
        data[:assignee]=params[:assignee]
        data[:start_date]=params[:start_date]
        data[:end_date]=params[:end_date]
        return data
      end
    end
  end
end