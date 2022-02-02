class KittensController < ApplicationController
  def create
    @kitten = Kitten.new(white_data)
    if @kitten.save
      redirect_to root_path
    else
      render :new
    end
  end
  def index
     @kittens = Kitten.all

     respond_to do |format|
      format.html     
      format.json { render :json => @kittens }
    end
  end

  def new
    @kitten = Kitten.new    
  end

  def show
    @kitten = Kitten.find(params[:id]) 
    respond_to do |fromat|
      format.html
      format.json {render :json => @kitten}
    end 
  end

  def edit

  end
  
  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy
    redirect_to root_path        
  end

  def white_data
    params.require(:kitten).permit(:name, :age)    
  end
end
