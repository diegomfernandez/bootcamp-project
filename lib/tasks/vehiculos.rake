namespace :vehiculos do
    desc "Lista en consola todos los vehiculos registrados"
    task vehiculo: :environment do
        puts Vehiculo.all
    end 
end

