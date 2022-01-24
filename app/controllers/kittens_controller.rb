class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    
  end

  def edit
  end
end
