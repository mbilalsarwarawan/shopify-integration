# Simple Rack application for testing the hello world API
# This bypasses bundler issues for demonstration

class HelloApp
  def call(env)
    if env['PATH_INFO'] == '/api/v1/hello'
      [200, {'content-type' => 'application/json'}, ['{"message": "Hello World from Shopify Integration API!"}']]
    else
      [404, {'content-type' => 'application/json'}, ['{"error": "Not found"}']]
    end
  end
end

run HelloApp.new
