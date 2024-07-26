class ZebraController < ApplicationController
  def square
    render({:template=> "game_templates/square"})
  end
  def square_results
    @the_num = params[:number].to_f
    @the_result = @the_num**2
    render({:template=>"game_templates/square_results"})
  end
  def square_root
    render({:template=> "game_templates/square_root"})
  end
  def square_root_results
    @the_num = params[:user_number].to_f
    @the_result = @the_num**(0.5)
    render({:template=>"game_templates/square_root_results"})
  end
  def payment
    render({:template=> "game_templates/payment"})
  end
  def payment_results
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @principal = params[:user_pv].to_f
    @result = ((@apr/(100*12))*@principal)/(1-(1+(@apr/(100*12)))**(-@years*12))
    render({:template=>"game_templates/payment_results"})
  end
  def random
    render({:template=> "game_templates/random"})
  end
  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @the_result = rand(@min..@max)
    render({:template=>"game_templates/random_results"})
  end

  def rules
    render({:template=> "game_templates/home"})
  end
end
