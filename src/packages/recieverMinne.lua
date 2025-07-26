peripheral.find("modem", rednet.open)

if not peripheral then
    error("No modem found. Please ensure a modem is connected.")
end

