class Company < ApplicationRecord
  def selection_type
    choice
  end

  def state
    situation
  end

  def state_class
    case situation
    when "ongoing" then "status-ongoing"
    when "waiting" then "status-waiting"
    else "status-default"
    end
  end

  def priority_class
    case interest
    when "high" then "priority-high"
    when "medium" then "priority-medium"
    else "priority-low"
    end
  end
  
  def start_time
    starttime_c
  end

  def end_time
    endtime_c
  end

  def time_range
    "#{start_time} - #{end_time}"
  end
end
