class CartController < ApplicationController
  before_action :set_carts, only: [:add_to_cart]
  skip_before_action :authenticate_user!

  def add_to_cart
    if params[:carts]
      # @cart = Cart.find_by_ticker(params[:carts])
      # @cart ||= Cart.new_from_lookup(params[:carts])
    else
      if @cart
        render json: @cart
      else
        render json: {'cart_id': SecureRandom.uuid}
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carts
      if params[:uuid]
        @cart = Cart.find(params[:uuid])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carts_params
      params.require(:carts).permit(:uuid, :orders)
    end
end
