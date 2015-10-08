json.array!(@languages) do |language|
  json.extract! language, :id, :locale, :language, :active
  json.url language_url(language, format: :json)
end
