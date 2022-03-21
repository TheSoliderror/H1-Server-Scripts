game:executecommand("say 3p/1p Loaded")

function third()
game:executecommand("sv_cheats 1")
game:executecommand("camera_thirdperson 1")
game:executecommand("say Set to ^53rd")
end

function first()
game:executecommand("camera_thirdperson 0")
game:executecommand("say Set to ^51st")
game:executecommand("sv_cheats 0")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!third" or mes =="3rd" then
		third();
    end
	
	if msg == "!first" or msg == "1st"then
		first();
    end
	
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
