class ReportsController < ApplicationController
  before_action :authorize_admin

  def reports
    conditions = build_filter_conditions
    @screening_details = ScreeningDetail.joins(:screen, :movie, :slot)
                                        .where(conditions)
  end

  def build_filter_conditions
    cond = []

    @date = params['filter_date'] || nil
    cond << ['screening_details.screening_date = ?', @date] if @date.present?

    @start_time = params['filter_start_time'] || nil
    cond << ['slots.start_time >= ?', @start_time.to_i] if @start_time.present? && @start_time != '0'

    @end_time = params['filter_end_time'] || nil
    cond << ['slots.end_time <= ?', @end_time.to_i] if @end_time.present? && @end_time != '0'

    merge_conditions(cond)
  end

  def merge_conditions(cond)
    sub_cond = cond.map { |a| "(#{a.first})" }.join(' AND ')
    statement = cond.inject([]) { |new, a| new += a[1..a.size] }
    statement.insert(0, sub_cond) if sub_cond.present?
    statement
  end
end
