json.array!(@destination_images) do |destination_image|
  json.extract! destination_image, :id, :destination_id, :destination_image
  json.url destination_image_url(destination_image, format: :json)
end
