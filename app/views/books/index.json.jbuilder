json.array!(@books) do |book|
  json.extract! book, :title, :price, :author, :category_id
  json.url book_url(book, format: :json)
end
