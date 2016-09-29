module ApplicationHelper
  def logo_image
    attachments.inline['logo.png'] = File.read('app/assets/images/logo.png')
    image_tag attachments['logo.png'].url
  end
end
