def format_duration(seconds)
  format = {}
  format[:year] = seconds/31536000
  seconds = seconds%31536000
  format[:day] = seconds/86400
  seconds = seconds%86400
  format[:hour] = seconds/3600
  seconds = seconds%3600
  format[:minute] = seconds/60
  format[:second] = seconds%60
  format = format.select {|k,v| v>0}
  format_time = format.inject([]) do |strings,(k,v)|
    if v>0
      string = "#{v} #{k.to_s}"
      if v>1
        string = string + "s"
      end
      strings << string
    end
    strings
  end
  format_time.count == 1 ? format_time[0] : format_time[0..-2].join(", ") + " and " + format_time[-1]
end

p format_duration(132030240)
