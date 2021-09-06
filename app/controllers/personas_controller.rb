class PersonasController < ApplicationController
    def new
        @persona=@personable.personas.new
    end
    def create
        @persona =@personable.personas.new persona_params
        @personable.save
        redirect_to @personable, notice: "Persona creada satisfactoriamente"
    end
    private
        def persona_params
            params.require(:persona).permit(:nombres,:apellido_paterno,:apellido_materno)
        end
end
