class ProductsController < ApplicationController
  def new
    @product = Form::Product.new
  end

  def create
    @product = Form::Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: "商品 #{@product.name} を登録しました。"
    else
      render :new
    end
  end

  private

  def product_params
    params
      .require(:form_product)
      .permit(Form::Product::REGISTRABLE_ATTRIBUTES)
  end
end