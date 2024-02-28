description = 
[[
The Fish Farm is a self sustaining food source.

-V1.0.3-
Fixed an issue with the game crashing when leaving the farm off-screen and returning in a different season. (Thanks to Kiyo for the report)

-V1.0.2-
Fixed recipe difficulties. Normal and Hard were swapped, whoops.

-V1.0.1-
Fixed the recipe and the farm giving the incorrect fish types. Now requires Freshwater fish to build, and gives Freshwater fish when harvested.

-V1.0-
Updated and cleaned majority of code. Now uses up-to-date beebox code and updated fish prefabs.
]]

name                        = "Fish Farm"
author                      = "Im So HM02 (Original by Afro1967)"
version                     = "1.0.3"
forumthread                 = ""
icon                        = "modicon.tex"
icon_atlas                  = "modicon.xml"
api_version                 = 10
dont_starve_compatible      = false
reign_of_giants_compatible  = false
all_clients_require_mod     = true
dst_compatible              = true
client_only_mod             = false

--Locals

local Options 				= {{description = "Show", data = true}, {description = "Hide", data = false}}

local Difficulty 			= {{description = "Easy", data = 1}, {description = "Normal", data = 2}, {description = "Hard", data = 3}}

local Empty 				= {{description = "", data = 0}}

local function Title(title) --Allows use of an empty label as a header
return {name=title, options=Empty, default=0,}
end

local SEPARATOR 			= Title("")

--Config options

configuration_options =
{
	Title("Settings"),
	{
		name	= "fishfarmrecipe",
		label	= "Recipe Difficulty",
		options = Difficulty,
		default = 2,
	},
}