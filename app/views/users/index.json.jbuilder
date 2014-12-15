json.array!(@users) do |user|
  json.extract! user, :id, :name, :attending, :avatar, :comment, :email
  json.url user_url(user, format: :json)
end
