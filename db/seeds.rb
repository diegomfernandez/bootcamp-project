# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
    Articulo.create(
        descripcion: Faker::Book.author
        )
end
50.times do
    Propietario.create(
        curp: Faker::Number.number(digits: 18),
        fecha_nacimiento: Faker::Date.in_date_period(month: 12),
        )
end
50.times do
    License.create(
        numero: Faker::IDNumber.croatian_id,
        tipo: "A",
        fecha_caducidad: Faker::Date.in_date_period(month: 12),
        propietario_id: rand(1..50)
        )
end
50.times do
    Oficial.create(
        numero_agente: Faker::IDNumber.brazilian_citizen_number
        )
end
for i in 1..50 do
    Persona.create(
        nombres: Faker::Name.first_name,
        apellido_paterno: Faker::Name.last_name,
        apellido_materno: Faker::Name.last_name,
        personable_type: "Oficial",
        personable_id: i
        )
        Persona.create(
        nombres: Faker::Name.first_name,
        apellido_paterno: Faker::Name.last_name,
        apellido_materno: Faker::Name.last_name,
        personable_type: "Propietario",
        personable_id: i
        )
end
50.times do
    Infraccion.create(
        articulo_id: rand(1..50),
        propietario_id: rand(1..50),
        oficial_id: rand(1..50),
        importe: Faker::Number.decimal(l_digits: 3),
        fecha: Faker::Date.in_date_period(month: 2),
        calle: Faker::Address.street_name,
        municipio: Faker::Address.community
        )
end
50.times do
    Vehiculo.create(
        numero_tarjeta_circulacion: Faker::Number.number(digits: 8),
        numero_serie: Faker::Vehicle.vin,
        numero_placa: Faker::Vehicle.license_plate,
        fecha_caducidad_tarjeta: Faker::Date.in_date_period(month: 12)
        )
end
