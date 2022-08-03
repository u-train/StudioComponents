local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local StudioStyleGuide = require(script.Parent.StudioStyleGuide)

local joinDictionaries = require(script.Parent.joinDictionaries)
local BaseButton = require(script.Parent.BaseButton)

local function MainButton(props)
	return Roact.createElement(
		BaseButton,
		joinDictionaries({
			TextColorStyle = StudioStyleGuide.Color.DialogMainButtonText,
			BackgroundColorStyle = StudioStyleGuide.Color.DialogMainButton,
			BorderColorStyle = StudioStyleGuide.Color.ButtonBorder,
		}, props)
	)
end

return MainButton
