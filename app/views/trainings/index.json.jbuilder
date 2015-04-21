json.trainings do
  json.array! @trainings, :id, :name, :cost, :translated_name, :translated_description, :cost
end