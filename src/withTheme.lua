local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

local StudioThemeProvider = Roact.Component:extend("StudioThemeProvider")
local success, studioSettings = pcall(function()
	return settings().Studio
end)

if success then
	function StudioThemeProvider:init()
		self:setState({ theme = studioSettings.Theme })
		self._changed = studioSettings.ThemeChanged:Connect(function()
			self:setState({ theme = studioSettings.Theme })
		end)
	end

	function StudioThemeProvider:willUnmount()
		self._changed:Disconnect()
	end
else
	function StudioThemeProvider:init()
		self:setState({ theme = require(script.Parent.MockStudioTheme) })
	end
end

function StudioThemeProvider:render()
	local render = Roact.oneChild(self.props[Roact.Children])
	return render(self.state.theme)
end

local function withTheme(render)
	return Roact.createElement(StudioThemeProvider, {}, {
		render = render,
	})
end

return withTheme
