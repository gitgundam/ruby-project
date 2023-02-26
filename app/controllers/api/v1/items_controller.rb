class Api::V1::ItemsController < ApplicationController
  include Swagger::Blocks
  swagger_path "/api/v1/items" do
    operation :post do
    end
  end
  swagger_path "/api/v1/items" do
    operation :get do
      key :description, "查询"
    end
  end

  def index

    items = Item.page(params[:page] || 1 ).per(params[:page_size] || 10)
    render json: { resource: items ,pager:{
      page:params[:page],
      page_no:params[:page_size],
      count:Item.count,

    }}
  end

  def create
    
    item = Item.new amount: 1
    if item.save
      render json: { resource: item }
    else
      render json: { errors: item.errors }
    end
  end
end
