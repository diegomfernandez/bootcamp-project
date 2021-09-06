class Oficials::PersonasController < PersonasController
    before_action :set_personable
    
    private
    
        def set_personable
            @personable = Oficial.find(params[:oficial_id])
        end
end