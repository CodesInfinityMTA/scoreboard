

config = {
    ["Blur"] = true,  -- Deseja utilizar Blur? (true ou false)
    ['BlurName'] = 'Blur', -- Nome do Resource Blue
    ["Banner"] = {"Everyone", "Everyone", "files/imgs/jogador.png"},
	['ACLs'] = {
		{'Everyone', 'jogador'}, -- ACL, Banner
 	},
    ['ScrollBackground'] = {43, 53, 76}; -- Coloração do background da scrollbar
    ['ScrollColor'] = {81, 125, 179}; -- Coloraçao da Scrollbar
    ['BackgroundColor'] = {52, 60, 90}; -- Coloração da base
    ['BackgroundPlayers'] = {43, 53, 76}; -- Coloração do background do contador de players
    ['ServerName'] = 'https://destinyroleplay.com'; -- Nome ou texto desejado referente a seu servidor
    ['ColorMaxPlayers'] = {46, 53, 79}; -- Coloração do contador de jogadores
    ['Elements'] = {'Samu', 'Mec'}; -- elementData de Samu ou mecânico
    ['Premium'] = {true, 'Premium'} -- Deseja utilizar o destaque de premium? Se sim deixe true ou não deixe false, ao Lado ficará a ACL
}














formatNumber = function(number)   
    local formatted = number   
    while true do       
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1.%2')     
        if ( k==0 ) then       
            break   
        end   
    end   
    return formatted 
end 

notifyS = function(player, message, type)
    exports["FR_DxMessages"]:addBox(player, message, type)
end

notifyC = function(message, type)
    exports["FR_DxMessages"]:addBox(message, type)
end

function removeHex(message)
    if (type(message) == "string") then
        while (message ~= message:gsub("#%x%x%x%x%x%x", "")) do
            message = message:gsub("#%x%x%x%x%x%x", "")
        end
    end
    return message or false
end

function puxarNome(player)
    return removeHex(getPlayerName(player))
end

function puxarID(player)
    return (getElementData(player, "ID") or 0)
end

function puxarConta(player)
    return getAccountName(getPlayerAccount(player))
end

function dadosMarker()
    return "cylinder", 1.1, 0, 0, 0, 90
end