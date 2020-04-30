require "http"

response = HTTP.headers(:Accept=>"application/json")
                .get("https://icanhazdadjoke.com/")

p response.parse["joke"] if response.code == 200