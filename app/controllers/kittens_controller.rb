class KittensController < ApplicationController
  def create
    puts params  
    puts "##################"
    puts params
    some = params.require(:kitten).permit(:age)
    puts params.class
  end
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

  def white_data(params)
    
  end
end
