class StaticPagesController < ApplicationController
  def home
    @companies = Company.all
  end
  
  def company
  end

  def todo
  end

  def todo_n
  end
end
