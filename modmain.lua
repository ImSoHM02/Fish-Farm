PrefabFiles = 
{
        "w_pond",
}

Assets = 
{
	Asset("ATLAS", "images/inventoryimages/w_pond.xml"),
        Asset( "IMAGE", "minimap/w_pond.tex" ),
        Asset( "ATLAS", "minimap/w_pond.xml" ),	
}

AddMinimapAtlas("minimap/w_pond.xml")

STRINGS = GLOBAL.STRINGS
Recipe = GLOBAL.Recipe
Ingredient = GLOBAL.Ingredient
TECH = GLOBAL.TECH

GLOBAL.STRINGS.NAMES.W_POND = "Fish Farm"
STRINGS.RECIPE_DESC.W_POND = "I May Just Stay Home More."
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.W_POND = "Fish like honey, who knew?"

if GetModConfigData("fishfarmrecipe") == 1 then
        AddRecipe2("w_pond",
        { 
                Ingredient("boards", 5),
                Ingredient("pondfish", 2),
                Ingredient("bee", 4)
        },
                TECH.SCIENCE_ZERO, "w_pond_placer", {"GARDENING"})
        RegisterInventoryItemAtlas("images/inventoryimages/w_pond.xml", "w_pond.tex")

elseif GetModConfigData("fishfarmrecipe") == 2 then
        AddRecipe2("w_pond",
        { 
                Ingredient("boards", 5),
                Ingredient("pondfish", 2),
                Ingredient("bee", 4),
                Ingredient("honeycomb", 1),
                Ingredient("rope", 5)
        },
                TECH.SCIENCE_TWO,"w_pond_placer", {"GARDENING"})
        RegisterInventoryItemAtlas("images/inventoryimages/w_pond.xml", "w_pond.tex")

elseif GetModConfigData("fishfarmrecipe") == 3 then
        AddRecipe2("w_pond",
        {
                Ingredient("boards", 10),
                Ingredient("pondfish", 4),
                Ingredient("bee", 8),
                Ingredient("honeycomb", 2),
                Ingredient("rope", 10)
        },
                TECH.SCIENCE_TWO, "w_pond_placer", {"GARDENING"})
        RegisterInventoryItemAtlas("images/inventoryimages/w_pond.xml", "w_pond.tex")
end
