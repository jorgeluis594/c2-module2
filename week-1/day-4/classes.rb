class Tv
  def initialize(color, tamano)
    @color = color
    @tamano = tamano
  end
  def ver_egg
    puts "El capi esta en la tele"
  end
end

class Dog
  def initialize(raza, edad, nombre)
    @raza = raza
    @edad = edad
    @nombre = nombre
  end
  def saywoof
    puts "woof"
  end
  def run

  end
end

class Printer
  def initialize(marca, modelo)
    @marca = marca
    @modelo = modelo
  end
  def encender
    "se encendio impresora"
  end
  def imprimir_hoja(*hojas)
    "imprimiendo hojas"
  end
end