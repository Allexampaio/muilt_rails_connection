json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :published_at
  json.url article_url(article, format: :json)
end
