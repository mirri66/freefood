module ApplicationHelper
  def safe_image_tag(source, options = {})
    source ||= "default.jpg"
    image_tag(source, options)
  end
end
