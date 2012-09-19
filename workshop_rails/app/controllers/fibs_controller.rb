require 'fibonacci'

class FibsController < ApplicationController
  def index
  end

  def create
    index = params[:index].to_i
    result = Fibonacci.new.value_at(index)
    render :json => result
  end
end