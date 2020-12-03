class MarketsController < ApplicationController
  def index
    session.delete(:recipe_id)
    session[:recipe_id] = params[:recipe_id]

    @markets = Market.all
  end

  def show
    @market = Market.find(params[:id])
    @recipe = Recipe.find(session[:recipe_id])

    @order_text=URI.escape("Olá, esse é um pedido através da Jantar para Dois.\nPreciso dos seguintes ingredientes:\n#{@recipe.ingredients}")
  end
end
