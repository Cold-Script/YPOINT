
local rep = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'
local lib =   loadstring(game:HttpGet(rep.. 'Library.lua'))()
local save =  loadstring(game:HttpGet(rep.. 'addons/SaveManager.lua'))()
local theme = loadstring(game:HttpGet(rep.. 'addons/ThemeManager.lua'))()

local Options = getgenv().Options

local Window = lib:CreateWindow({
    Title = 'YPoint | v6',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0
})
