class CartController < ApplicationController
  before_action :set_cart, only: [:add_to_cart, :checkout, :remove_from_cart]
  skip_before_action :authenticate_user!

  def add_to_cart
    if params[:subject_id]
      save_to_session
      redirect_to subjects_path
    end
  end

  def clear_cart
    reset_session
    redirect_to subjects_path
  end

  def checkout
    render 'checkout'
  end

  def remove_from_cart
    session[:cart].delete(params[:format])
    redirect_to checkout_path
  end

  private
    def set_cart
      if !session[:cart]
        session[:cart] = []
      else
        subject = []
        @cart = session[:cart]
        @cart.each do |c|
          subject.push(Subject.find(c))
        end
        @cart = subject.uniq
        get_total
      end
    end

    def save_to_session
      session[:cart] = session[:cart].push(params[:subject_id])
    end

    def get_total
      if @cart.count == 3
        @total = 4200
      else
        @total = @cart.inject(0){|sum,x| sum + x.price}
      end
    end
end
