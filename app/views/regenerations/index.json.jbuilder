json.regenerations do
  json.array! @regenerations, :id, :name, :translated_name
end