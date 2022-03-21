game:executecommand("say help Loaded")

function help()

game:executecommand("say To change gamemodes use ^1! ^7 in the chat followed by the gamemode. expl: ^1!tdm,!kc,!dom...ect ^5+!help2 ")
end

function help2()

game:executecommand("say To change to 3rd peroson use ^1!third ^7or ^1!tp^7, to go back 1st use ^1!first ^7or ^1!fp ^5+help3 ")
end

--this was iw6x so its no needed at all ad can be removed or edited for H1 after adding another if.
function help3()

game:executecommand("say List all of supported gamemodes are, ^1TDM^7,^1DOM^7,^1KC^7,^1Safegaurd^7,^1Hunted^7,^1cranked^7,^1Grind^7,^1search and destroy^7,^1Gun Game^7,^1Reinforce^7,^1and Infected^7")
end


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

	if msg == "!help me" or msg == "!help" then
		help();
    end

	if msg == "!help me2" or msg == "!help2" then
		help2();
    end

end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
