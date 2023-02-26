class Api::V1::ValidationCodesController < ApplicationController
  include Swagger::Blocks

  swagger_schema :Pet do
    key :required, [:id, :name]
    property :id do
      key :type, :integer
      key :format, :int64
    end
    property :name do
      key :type, :string
    end
    property :tag do
      key :type, :string
    end
  end

  def create
    head 202
  end
end
