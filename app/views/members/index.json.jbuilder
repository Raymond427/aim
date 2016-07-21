json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :email, :password_digest, :role, :linkedinurl, :major, :graduation_date, :is_executive, :executive_position
  json.url member_url(member, format: :json)
end
