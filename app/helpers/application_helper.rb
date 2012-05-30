module ApplicationHelper
  
  def status_tag(status, status_tag)
    raw "<span class='status #{status} #{status_tag}'>#{status}</span>"
  end
end
