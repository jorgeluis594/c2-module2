def exec_time(proc)
    now = Time.now
    proc.call
    return Time.now - now
end