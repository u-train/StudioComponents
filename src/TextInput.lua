local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Hooks = require(Packages.RoactHooks)

local TextBox = require(script.Parent.TextBox)

local noop = function() end

local defaultProps = {
	Size = UDim2.new(1, 0, 0, 21),
	LayoutOrder = 0,
	Disabled = false,
	PlaceholderText = "",
	Stringify = tostring,
	TryParsing = function(value)
		return true, value
	end,
	ClearTextOnFocus = true,
	ResetOnInvalid = true,
	OnFocused = noop,
	OnFocusLost = noop,
	OnFocusLostInvalid = noop,
	OnChanged = noop,
	OnChangedInvalid = noop,
}

local function TextInput(props, hooks)
	if props.Text then
		warn("Use Value instead of Text! Otherwise, use TextBox instead.")
	end

	local text, setText = hooks.useState(props.Stringify(props.Value or props.Text))

	return Roact.createElement(TextBox, {
		OnFocused = props.onFocused,
		OnFocusLost = function(rbxText, enterPressed, inputObject)
			local success, value = props.TryParsing(rbxText)

			if success then
				props.OnFocusLost(value, enterPressed, inputObject)
			elseif not props.ResetOnInvalid then
				props.OnFocusLostInvalid(value, enterPressed, inputObject)
			end

			if props.ResetOnInvalid then
				setText(props.Stringify(props.Value or props.Text))
			end
		end,
		OnChanged = function(rbxText)
			local success, value = props.TryParsing(rbxText)

			if success then
				props.OnChanged(value)
			else
				props.OnChangedInvalid(value, rbxText)
			end

			setText(rbxText)
		end,
		Text = text,
		Size = props.Size,
		PlaceholderText = props.PlaceholderText,
		Disabled = props.Disabled,
		LayoutOrder = props.LayoutOrder,
		ClearTextOnFocus = props.ClearTextOnFocus,
	})
end

return Hooks.new(Roact)(TextInput, {
	defaultProps = defaultProps,
})
