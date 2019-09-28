module ApplicationHelper
  def alert_class type
    case type.to_s
    when "alert"
      "alert-warning"
    when "notice"
      "alert-info"
    else
      "alert-#{type}"
    end
  end
end
