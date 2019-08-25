class GuitarsController < ApplicationController
  def index
    @guitars = Guitar.all 
  end

  def show
    @guitar = Guitar.find(params[:id]) 
  end

  def new
    @guitar = Guitar.new 
  end

  def create
    @guitar = Guitar.new(guitar_params)   
    if @guitar.save   
      flash[:notice] = 'Guitar added!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Guitar not added!'   
      render :new   
    end   
  end

  def edit
    @guitar = Guitar.find(params[:id])  
  end

  def update
    @guitar = Guitar.find(params[:id])   
    if @guitar.update_attributes(guitar_params)   
      flash[:notice] = 'Guitar updated!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Guitar not edited!'   
      render :edit   
    end   
  end

  def destroy
    @guitar = Guitar.find(params[:id])   
    if @guitar.delete   
      flash[:notice] = 'Guitar deleted!'   
      redirect_to root_path   
    else   
      flash[:error] = 'Failed to delete this guitar!'   
      render :destroy   
    end   
  end
  def guitar_params   
    params.require(:guitar).permit(:id, :g_type, :brand_name, :no_of_strings, :price, :bought_date)   
  end   
end
