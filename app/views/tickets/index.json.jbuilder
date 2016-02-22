json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :destination_id, :price, :quantity, :ticket_date
  json.url ticket_url(ticket, format: :json)
end
