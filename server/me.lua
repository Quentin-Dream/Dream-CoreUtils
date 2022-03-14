-- @desc Server-side /me handling
-- @author Elio
-- @version 3.0

-- Pre-load the language


-- @desc Handle /me command
local function onMeCommand(source, args)
    local text = Config.me.prefixdebut .. table.concat(args, " ") .. Config.me.prefixfin
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end

-- Register the command
RegisterCommand(Config.commande.me, onMeCommand)
