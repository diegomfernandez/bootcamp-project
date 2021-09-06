module Api
   class VehiclesController < Api::ApplicationController
    def index
        vehiculos=Vehiculo.all
        
        render json: vehiculos
    end
    def show
        render json: vehiculo_object
    end
    def create
        vehiculo=Vehiculo.new(vehiculo_params)
        if vehiculo.save
            render  json: vehiculo, status: 200
        else 
            render json: {error: 'Error al crear un nuevo vehiculo'}, status: 400
        end
    end
    def update
        if vehiculo_object
            vehiculo_object.update(vehiculo_params)
            render json: {message: 'Actualización satisfactoria'}, status: 200
        else
            render json: {error: 'Error al actualizar el vehículo'}, status: 400
        end
    end
    def destroy
        if vehiculo_object
            vehiculo_object.destroy
            render json: {message: 'Vehículo borrado satisfactoriamente'}, status: 200
        else
            render json: {error: 'Error al eliminar el vehículo'}, status: 400
        end
    end
    private 
    def vehiculo_object
        Vehiculo.find_by(id: params[:id])
    end
    def vehiculo_params
        params.require(:vehiculo).permit(:numero_tarjeta_circulacion, :numero_serie, :numero_placa, :fecha_caducidad_tarjeta)
    end
   end
end