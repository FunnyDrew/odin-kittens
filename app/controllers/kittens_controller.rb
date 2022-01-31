class KittensController < ApplicationController
  def create
    puts params  
  end
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new()
    puts "##################"
    puts params
    some = white_data(params)
    puts some
  end

  def show
    
  end

  def edit
  end

  def white_data(params)
    
  end
end
