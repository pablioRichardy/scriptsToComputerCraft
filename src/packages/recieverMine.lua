peripheral.find("modem", rednet.open)

if not peripheral then
    error("No modem found. Please ensure a modem is connected.")
end

local server_id = 3

while true do
    ::continue::
    local id, message = rednet.receive(server_id)

    if not id then
        goto continue
    end

    message = message.unserialize()

    local command = message.command
    local file = message.file

    fileName = "mine.lua"
    local file = fs.open(fileName, "w")
    file.write(message)
    file.close()

    shell.run("mine")
end