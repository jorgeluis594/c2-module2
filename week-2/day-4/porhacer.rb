class ReadCsv
    def initialize (file)
        @file = file 
        @matriz = convert_matriz
    end
    
    def datos
        hashes = obtener_headers
        obtener_datos.map do |item|
            row = Hash.new
            item.each_with_index { |dato,i| row[hashes[i]]=dato }
            row
        end
    end

    private

    def convert_matriz
       datos = File.open(@file)
       matriz = datos.readlines.map(&:chomp)
       datos.close
       matriz
    end

    def obtener_headers
        @matriz[0].scan(/\w+[\s\w]*(?=")/).map {|header| header.to_sym}
    end

    def obtener_datos
        @matriz[1..-1].map {|x| x.scan(/\w+[\s\w\-\+]*(?=")|[-]?[\d\.]+/) }
    end

end

csv = ReadCsv.new("grades.csv")
topalumnos = csv.datos.max(3) { |x,y| x[:Final] <=> y[:Final] }
topalumnos.each {|x| p "#{x[:"First name"]} with a final grade of #{x[:Final]}"}

# p topalumnos