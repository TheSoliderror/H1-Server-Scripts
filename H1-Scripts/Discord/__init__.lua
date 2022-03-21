
function dis()
game:executecommand("say Discord: ^5discord.gg/YOURDISCORDCODE ")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!discord" or msg == "!dis" then
		dis();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
