json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :school, :logo, :email, :donation_snippet
  json.url chapter_url(chapter, format: :json)
end
