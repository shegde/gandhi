Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '224956497580382', '90e79c96c7e0cccf31f241781e10a5c7'
end