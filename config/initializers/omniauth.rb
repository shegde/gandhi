Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['224956497580382'], ENV['90e79c96c7e0cccf31f241781e10a5c7']
end