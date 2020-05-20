class CaesarCipher
  def initialize(shift)
    @code = shift
  end

  def encode(string)
    letras = string.upcase.bytes
    letras.map do |byte|
      if byte<=90 && byte >=65
      byte + @code > 90 ? (byte + @code - 26).chr : (byte + @code).chr
      else
        byte.chr
      end
    end
        .join
  end

  def decode(string)
    letras = string.upcase.bytes
    letras.map do |byte|
      if byte<=90 && byte >=65
      byte - @code < 65 ? (26 + byte - @code).chr : (byte - @code).chr
      else
        byte.chr
      end
    end
        .join
  end
end
#p "Z".ord
# CaesarCipher.new(5).decode("HTIJMFWX")
p "Z".ord
