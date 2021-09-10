class PropietariosController < ApplicationController
  def index
    @propietarios = Propietario.all
  end
  def show
    @propietario = Propietario.find(params[:id])
  end
  def new
    @propietario = Propietario.new
  end
  def create
    @propietario = Propietario.new(propietario_params)

    if @propietario.save
      redirect_to @propietario
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @propietario = Propietario.find(params[:id])
  end

  def update
    @propietario = Propietario.find(params[:id])

    if @propietario.update(propietario_params)
      redirect_to @propietario
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @propietario = Propietario.find(params[:id])
    @propietario.destroy

    redirect_to propietarios_path
  end
  def create_random
    GenerateRandomPropietarioJob.perform_later
    redirect_to propietarios_path
  end
  private
    def propietario_params
      params.require(:propietario).permit(:curp,:fecha_nacimiento)
    end
end
