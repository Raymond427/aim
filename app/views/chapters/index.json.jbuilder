json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :school, :logo_img, :email, :donation_url
  json.url chapter_url(chapter, format: :json)
end
