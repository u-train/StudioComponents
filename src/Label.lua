local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local StudioStyleGuide = require(script.Parent.StudioStyleGuide)

local withTheme = require(script.Parent.withTheme)
local joinDictionaries = require(script.Parent.joinDictionaries)

local Constants = require(script.Parent.Constants)

local defaultProps = {
	LayoutOrder = 0,
	ZIndex = 0,
	Disabled = false,
	Position = UDim2.fromScale(0, 0),
	AnchorPoint = Vector2.new(0, 0),
	Size = UDim2.fromScale(1, 1),
	Text = "Label.defaultProps.Text",
	Font = Constants.Font,
	TextSize = Constants.TextSize,
	TextColorStyle = StudioStyleGuide.Color.MainText,
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	BorderMode = Enum.BorderMode.Inset,
	-- BackColorStyle?
	-- BorderColorStyle?
}

local function Label(props)
	return withTheme(function(theme)
		local joinedProps = joinDictionaries(defaultProps, props)
		local modifier = StudioStyleGuide.Modifier.Default
		if joinedProps.Disabled then
			modifier = StudioStyleGuide.Modifier.Disabled
		end
		joinedProps.TextColor3 = theme:GetColor(joinedProps.TextColorStyle, modifier)
		joinedProps.Disabled = nil
		joinedProps.TextColorStyle = nil
		return Roact.createElement("TextLabel", joinedProps)
	end)
end

return Label
