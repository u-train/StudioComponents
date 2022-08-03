local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local StudioStyleGuide = require(script.Parent.StudioStyleGuide)

local Label = require(script.Parent.Label)
local VerticalCollapsibleSection = require(script.Parent.VerticalCollapsibleSection)
local withTheme = require(script.Parent.withTheme)

local Wrapper = Roact.Component:extend("VerticalCollapsibleSectionWrapper")

function Wrapper:init()
	self:setState({
		Collapsed = false,
	})
end

function Wrapper:render()
	return withTheme(
		function(theme)
			local children = {}
			for i = 1, 5 do
				children[i] = Roact.createElement(Label, {
					LayoutOrder = i,
					Size = UDim2.new(1, 0, 0, 24),
					Text = string.format("Entry%i", i),
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					BackgroundColor3 = theme:GetColor(StudioStyleGuide.Color.Dropdown, StudioStyleGuide.Modifier.Default),
					TextXAlignment = Enum.TextXAlignment.Left,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, 24),
					}),
				})
			end
			return Roact.createElement(VerticalCollapsibleSection, {
				HeaderText = "Header",
				Collapsed = self.state.Collapsed,
				OnToggled = function()
					self:setState({
						Collapsed = not self.state.Collapsed,
					})
				end,
			}, children)

		end
	)
end

return function(target)
	local element = Roact.createElement(Wrapper)
	local handle = Roact.mount(element, target)
	return function()
		Roact.unmount(handle)
	end
end
