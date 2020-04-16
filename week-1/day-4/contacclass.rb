class Contactos
    def initialize ()
        @contactos = []
    end

    def agregar_contacto (nombre, telefono) 
        # @contactos.find {|contacto| contacto.nombre == nombre } ? puts "#{nombre} ya existe" : @contactos << Contacto.new(nombre,telefono)
        @contactos << Contacto.new(nombre,telefono)
    end

    def actualizar_contacto (nombre_contacto,numero_contacto)
        index = @contactos.index {|contacto| contacto.nombre == nombre_contacto } 
        @contactos[index].actualizar(numero_contacto) if index
    end

    def eliminar_contacto (nombre_contacto)
        index = @contactos.index { |contacto| contacto.nombre == nombre_contacto }
        @contactos.delete_at(index) if index
    end
    
    def mostrar_contactos
        @contactos.each {|contacto| puts "#{contacto.nombre} : #{contacto.telefono}" }
    end
end


class Contacto
    attr_reader :telefono
    attr_reader :nombre
    def initialize (nombre, telefono)
        @nombre = nombre
        @telefono = telefono
    end
    def actualizar(telefono)
        @telefono = telefono
    end
end
contactos = Contactos.new
loop do
    puts "What would you like to do?"
    puts "-- Type 'add' to add a contact."
    puts "-- Type 'update' to update a contact."
    puts "-- Type 'display' to display all contacts."
    puts "-- Type 'delete' to delete a contact."
    opcion = gets.chomp.downcase
    case opcion
    when "add"
         puts "Ingrese nombre de contacto"
         nombre = gets.chomp
         puts "Ingrese numero de telefono"
         telefono = gets.chomp
         contactos.agregar_contacto(nombre,telefono)
    when "update"
         puts "Ingrese nombre de contacto"
         nombre = gets.chomp.to_sym
         puts "Ingrese numero de telefono"
         telefono = gets.chomp
         contactos.actualizar_contacto(nombre,telefono)
    when "display"
        contactos.mostrar_contactos()
    when "delete"
        puts "Ingrese contacto a eliminar"
        nombre = gets.chomp
        contactos.eliminar_contacto(nombre)
    when "exit"
        break
    else
        "Comnando no valido"
    end
end