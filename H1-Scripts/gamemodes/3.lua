

function sab()
game:executecommand("g_gametype sab")
game:executecommand("say Set to ^5Sabotage ^7for next round!")
game:executecommand ("scr_game_graceperiod 300")
end

function dom()
game:executecommand("g_gametype dom")
game:executecommand("say Set to ^5DOMINATION ^7for next round!")
end



local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!sabotage " or msg == "!sab" then
		sab();
    end
	
	if msg == "!domination" or msg == "!dom" then
		dom();
    end
	
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
