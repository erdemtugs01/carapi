Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      expose: ['Link', 'Current-Page', 'Page-Items', 'Total-Pages', 'Total-Count', 'uid', 'client', 'access-token', 'expiry', 'content-disposition']
  end
end
