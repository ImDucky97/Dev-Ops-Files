

client_script "client.lua"

server_script "server.lua"

ui_page "html/index.html"

files {
	"whitelist.json",
	"html/index.html",
	"html/sounds/*.ogg"
}

fx_version "bodacious"

game "gta5"server_scripts { '@mysql-async/lib/MySQL.lua' }