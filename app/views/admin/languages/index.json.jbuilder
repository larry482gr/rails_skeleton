json.array!(@languages) do |language|
  json.extract! language, :id, :locale, :language, :active
  json.url admin_language_path(language, format: :json)
end
