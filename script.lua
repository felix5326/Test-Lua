local value = {}
local config = gg.EXT_CACHE_DIR.."/"..
gg.getFile():match("").. ".cfg"
local data = loadfile(config)
if data ~= nil then value = data() data = nil end id = "nickname"pass = "pass"while(true)do value = gg.prompt({"Name","Password"},value,{"text","text"})
if value == nil 
then gg.toast("empty")
return
end 
if value[3]
 then gg.saveVariable(value, config)os.remove(config)
else
end
if id == value[1] and pass == value[2] then gg.alert("Successful login")
break
else 
if id ~= value[1] and pass == value[2] then gg.alert("Error: Nickname")
else if 
id == value[1] and pass ~= value[2] then gg.alert("Error: Password")
else 
gg.alert("Error: Nickname, Password")
end end end end 

choice = gg.choice({"CHOOSE1", "CHOOSE2","Exit"})
