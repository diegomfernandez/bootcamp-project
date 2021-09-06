class Propietarios::PersonasController < PersonasController
    before_action :set_personable
    
    private
    
        def set_personable
            @personable = Propietario.find(params[:propietario_id])
        end
end