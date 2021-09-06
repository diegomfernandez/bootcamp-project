class ArticulosController < ApplicationController
  def index
    @articulos = Articulo.all
  end
  def show
    @articulo = Articulo.find(params[:id])
  end
  def new
    @articulo = Articulo.new
  end
  def create
    @articulo = Articulo.new(articulo_params)

    if @articulo.save
      redirect_to @articulo
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @articulo = Articulo.find(params[:id])
  end

  def update
    @articulo = Articulo.find(params[:id])

    if @articulo.update(articulo_params)
      redirect_to @articulo
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy

    redirect_to root_path
  end
  
  private
    def articulo_params
      params.require(:articulo).permit(:descripcion)
    end
end
