--this needs search n destroy, reinforce and gun game. 
function sd()
game:executecommand("g_gametype sd")
game:executecommand("say Set to ^5SEARCH AND DESTROY ^7for next round!")
end

function ffa()
game:executecommand("g_gametype dm")
game:executecommand("say Set to ^5FREE FOR ALL ^7for next round!")
end

function head()
game:executecommand("g_gametype koth")
game:executecommand("say Set to ^5Headquarters ^7for next round!")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!search" or msg == "!search n destroy" or msg == "!search and destroy" or msg == "!snd" then
		sd();
    end
	
	if msg == "!ffa" or msg == "!free for all" then
		rein();
    end
	
	if msg == "!head" or msg == "!hq" or msg == "!headquarters" then
		gungame();
    end
	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
