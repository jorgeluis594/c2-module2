class String
    def to2000
        count = 0
        to_2000 = self.split("").map do |x,i|
            if x =~ /[A-Za-z]/
                count+=1
                count.odd? ? x.upcase : x.downcase
            else x
            end
        end
        to_2000.join("")
    end
end