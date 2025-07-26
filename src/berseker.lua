local args = {...}

function install(url, filename)
    if http then
        local response = http.get(url)
        if response then
            local file = fs.open(filename, "w")
            file.write(response.readAll())
            file.close()
            response.close()
            print("Arquivo baixado com sucesso!")
        else
            print("Falha ao acessar a URL.")
        end
    else
        print("HTTP está desabilitado no servidor.")
    end
end

switch args[1] do
    case "install":
        local package = args[2] .. ".lua"
        local url = "https://raw.githubusercontent.com/pablioRichardy/scriptsToComputerCraft/refs/heads/master/src/packages/" .. package
        install(url, package)
        print("Pacote instalado: " .. package)
    default:
        print("Commando inválido. Use 'install <package_name>'.")
        return
end
local args = {...}

if #args < 2 or args[2] == nil then
    print("Uso: install <package_name>")
    return
end

function install(url, filename)
    if http then
        local response = http.get(url)
        if response then
            local file = fs.open(filename, "w")
            file.write(response.readAll())
            file.close()
            response.close()
            print("Arquivo baixado com sucesso!")
        else
            print("Falha ao acessar a URL.")
        end
    else
        print("HTTP está desabilitado no servidor.")
    end
end

local command = args[1]

if command == "install" then
    local package = args[2] .. ".lua"
    local url = "https://raw.githubusercontent.com/pablioRichardy/scriptsToComputerCraft/refs/heads/master/src/packages/" .. package
    install(url, package)
    print("Pacote instalado: " .. package)
else
    print("Comando inválido. Use 'install <package_name>'.")
    return
end
