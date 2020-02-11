class NumbersController < ApplicationController

  def index
  end


  def funny_fact

    n = Number.new(numbers_param[:number])
    # we validate the number and getting facts if everything is ok
    # if not we just show the flash message
    if n.valid?
      @fact = NumbersApi.get_fact(n.number)
    else
      flash.now.alert ='That is not a number, pal!'
    end
  end

  def numbers_param
    params.require(:number).permit(:number)
  end

end
