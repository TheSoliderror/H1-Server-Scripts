game:executecommand("say Map Skip Script Loaded: Created by: Soliderror")
local onPlayerSay = function (player, msg)
    msg = string.lower(msg);
	if msg == "!next" or msg == "!skip" then
		game:executecommand("map_rotate")
    end	
end
local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);  
end
level:onnotify("connected", onPlayerConnected);
