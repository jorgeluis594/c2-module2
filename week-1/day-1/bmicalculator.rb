class Bmi
    attr_reader :nombre
    def initialize(nombre,peso,altura)
        @nombre = nombre
        @peso = peso
        @altura = altura
    end
    def calcular()
        return (@peso/@altura**2).round(2)
    end
end

imc = Bmi.new("Juan",80,1.85)
puts "holas"
puts "#{imc.nombre} tu imc es #{imc.calcular()}"