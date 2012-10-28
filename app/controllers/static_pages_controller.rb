class StaticPagesController < ApplicationController
  def waiver
  end
  
  def map
   @foods = Food.all;
  end

  def about
  end
end
