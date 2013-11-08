json.array!(@categories) do |category|
  json.extract! category, :name, :r18
  json.url category_url(category, format: :json)
end
