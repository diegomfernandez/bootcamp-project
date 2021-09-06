class InfraccionsController < ApplicationController
  def index
    @infraccions = Infraccion.all
  end
  def show
    @infraccion = Infraccion.find(params[:id])
  end
  def new
    @infraccion = Infraccion.new
  end
  def create
    @infraccion = Infraccion.new(infraccion_params)
    if @infraccion.save
      redirect_to @infraccion
    else
      render :new, status: :unprocessable_entity
    end
    @infraccion.update(infraccion_params)
  end
  def edit
    @infraccion = Infraccion.find(params[:id])
  end

  def update
    @infraccion = Infraccion.find(params[:id])

    if @infraccion.update(infraccion_params)
      redirect_to @infraccion
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @infraccion = Infraccion.find(params[:id])
    @infraccion.destroy

    redirect_to infraccions_path
  end
  
  private
    def infraccion_params
      params.require(:infraccion).permit(:articulo_id,:oficial_id,:propietario_id,:importe,:fecha,:calle,:municipio)
    end
end
