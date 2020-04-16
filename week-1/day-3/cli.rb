contacts = Hash.new

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
         if contacts[nombre.to_sym].nil?
         contacts[nombre.to_sym] = telefono
         else
            puts "#{nombre} ya existe"
        end
    when "update"
         puts "Ingrese nombre de contacto"
         nombre = gets.chomp.to_sym
         puts "Ingrese numero de telefono"
         telefono = gets.chomp
         if contacts[nombre.to_sym].nil?
            puts "Contacto no existe"
         else 
            contacts[nombre.to_sym]=telefono
        end
    when "display"
        contacts.each do |nombre,telefono|
            puts "#{nombre}: #{telefono}"
        end
    when "delete"
        puts "Ingrese contacto a eliminar"
        nombre = gets.chomp
        if contacts[nombre.to_sym].nil?
            puts "contacto no existe"
        else
            contacts.delete(nombre.to_sym)
            puts "#{nombre} eliminado"
        end
    when "exit"
        break
    else
        "Comnando no valido"
    end
end