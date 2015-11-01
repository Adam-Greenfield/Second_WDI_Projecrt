json.array!(@links) do |link|
  json.extract! link, :id, :title, :url, :thumbnail
  json.url link_url(link, format: :json)
end
