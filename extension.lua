
local dialogOpen = false
local dialog
local sprite = app.activeSprite

local DithererDialog = function()

    local dialog = Dialog
    {
        title = "Dithering Brushes",
        onclose = function() dialogOpen = false end
    }

    dialog:slider
    {
        id = "density",
        label = "Density",
        min = 0,
        max = 100,
        value = 50
    }

    return dialog

end

function init(plugin)

    if not app.isUIAvailable then return end

    dialog = DithererDialog()

    plugin:newCommand
    {
        id = "dithering-brushes",
        title = "Dithering Brushes",
        group = "edit_transform",
        onenabled = function() return app.activeSprite ~= nil end,
        onclick = function()
            dialogOpen = true
            dialog:show { wait = false }
            local image = Image(2, 2)
            image:drawPixel(0, 0, app.pixelColor.rgba(255, 0, 0, 255))
            image:drawPixel(1, 0, app.pixelColor.rgba(0, 0, 0, 0))
            image:drawPixel(1, 1, app.pixelColor.rgba(255, 0, 0, 255))
            image:drawPixel(0, 1, app.pixelColor.rgba(0, 0, 0, 0))
            local brush = Brush
            {
                image = image,
                pattern = BrushPattern.ORIGIN
            }
            app.activeBrush = brush

        end
    }

end
