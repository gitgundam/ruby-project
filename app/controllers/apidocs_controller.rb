require "swagger/blocks"

class ApidocsController < ActionController::Base
  include Swagger::Blocks

  swagger_root do
    key :swagger, "2.0"
  end

  # A list of all classes that have swagger_* declarations.
  SWAGGERED_CLASSES = [
    # Api::V1::ValidationCodesController,
    Api::V1::ItemsController,
    # Pet,
    self,
  ].freeze

  def index
    # render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
