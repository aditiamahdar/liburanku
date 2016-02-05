json.array!(@destinations) do |destination|
  json.extract! destination, :id, :name, :latitude, :longitude, :logo, :cover, :description, :email, :url, :user_id, :category_id, :price, :discount
  json.url destination_url(destination, format: :json)
end
