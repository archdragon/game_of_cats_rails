json.missions do
  json.array! @missions, :id, :name, :translated_name
end