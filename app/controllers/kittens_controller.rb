class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new()  
  end

  def show
    
  end

  def edit
  end
end
