local Vendor = script.Parent.Parent
local Roact = require(Vendor.Roact)

local joinDictionaries = require(script.Parent.joinDictionaries)
local BaseButton = require(script.Parent.BaseButton)

local function Button(props)
	return Roact.createElement(
		BaseButton,
		joinDictionaries(props, {
			TextStyleColor = Enum.StudioStyleGuideColor.ButtonText,
			BackgroundStyleColor = Enum.StudioStyleGuideColor.Button,
			BorderStyleColor = Enum.StudioStyleGuideColor.ButtonBorder,
		})
	)
end

return Button