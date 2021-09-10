class GenerateRandomPropietarioJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Propietario.create(
        curp: Faker::Number.number(digits: 18),
        fecha_nacimiento: Faker::Date.in_date_period(month: 12),
        )
  end
end
