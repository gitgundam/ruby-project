require "rails/all"
require "grape-swagger-rails"

GrapeSwaggerRails.options.url = "/swagger_doc.json"
GrapeSwaggerRails.options.app_url = "http://swagger.wordnik.com"

GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.app_url = request.protocol + request.host_with_port
end

GrapeSwaggerRails.options.app_name = "Swagger"
GrapeSwaggerRails.options.headers["Special-Header"] = "Some Secret Value"
