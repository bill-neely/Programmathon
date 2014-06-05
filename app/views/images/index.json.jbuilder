json.array!(@images) do |image|
  json.extract! image, :invoice, :invoicedate, :route, :customer, :customername, :chain, :chainname, :sales, :salesname, :imageurl
  json.url image_url(image, format: :json)
end