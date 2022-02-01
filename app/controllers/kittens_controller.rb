class KittensController < ApplicationController
  def create
    new_kitten = Kitten.new(white_data)
    if new_kitten.save
      redirect_to root_path
    else
      "ooops"
    end
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

  def white_data
    params.require(:kitten).permit(:name, :age)    
  end
end
