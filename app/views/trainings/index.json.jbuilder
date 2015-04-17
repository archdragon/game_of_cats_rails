json.trainings do
  json.array! @trainings, :id, :name, :cost
end