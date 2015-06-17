json.array!(@items) do |item|
  json.extract! item, :id, :order_id, :cost, :quantity, :name, :vendor_url
  json.url item_url(item, format: :json)
end
