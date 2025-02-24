# frozen_string_literal: true

module ClickUp
  class TimeEntry < APIResource
    extend ClickUp::APIOperations::All

    class << self
      def index_path(params={})
        "/team/#{params[:team_id]}/time_entries?assignee=#{params[:assignee]}&task_id=#{params[:task_id]}&start_date=#{params[:start_date]}&end_date=#{params[:end_date]}"
      end
    end
  end
end