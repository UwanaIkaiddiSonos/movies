json.array! @movies.each do |movies|
  json.id movies.id
  json.title movies.title
  json.run_time movies.run_time
end