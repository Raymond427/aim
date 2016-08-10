json.array!(@mail_blasters) do |mail_blaster|
  json.extract! mail_blaster, :id, :to, :subject, :from, :body
  json.url mail_blaster_url(mail_blaster, format: :json)
end
