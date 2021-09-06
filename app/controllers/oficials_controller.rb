class OficialsController < ApplicationController
  def index
    @oficials = Oficial.all
  end
  def show
    @oficial = Oficial.find(params[:id])
  end
  def new
    @oficial = Oficial.new
  end
  def create
    @oficial = Oficial.new(oficial_params)

    if @oficial.save
      redirect_to @oficial
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @oficial = Oficial.find(params[:id])
  end

  def update
    @oficial = Oficial.find(params[:id])

    if @oficial.update(oficial_params)
      redirect_to @oficial
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @oficial = Oficial.find(params[:id])
    @oficial.destroy

    redirect_to oficials_path
  end
  
  private
    def oficial_params
      params.require(:oficial).permit(:numero_agente)
    end
end
