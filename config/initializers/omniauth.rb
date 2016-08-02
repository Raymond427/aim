Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :linkedin, ENV['LINKEDIN_ID'], ENV['LINKEDIN_SECRET'], :scope => 'r_basicprofile r_emailaddress', :fields => ['id', 'email-address', 'first-name', 'last-name', 'picture-urls::(original)', 'public-profile-url']
end
