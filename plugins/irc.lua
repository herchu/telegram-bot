require "irc"
--local sleep = require "socket".sleep

local s = irc.new{nick = "telegrito"}

--s:hook("OnChat", function(user, channel, message)
--print(("[%s] %s: %s"):format(channel, user.nick, message))
--end)

s:connect("zurich.irc.ibm.com")
s:join("#silvergate")

--while true do
--s:think()
--sleep(0.5)
--end

function run(msg, matches)
--  print("
  s:sendChat("#silvergate", "[telegram from " .. msg.from.first_name .. "] " .. msg.text)
--  print("hola")
end

return {
    description = "IRC bridge", 
    usage = "!irc",
    patterns = {"IRC", "Irc", "irc", "avisa", "pasillo"}, 
    run = run
}


