local StudioThemes = require(script.Parent.StudioThemes)
local StudioStyleGuide = require(script.Parent.StudioStyleGuide)

local MockStudioTheme = { _themeUsed = "Dark", _themes = StudioThemes }

function MockStudioTheme:GetColor(studioStyleGuideColor, studioStyleGuideModifer)
	-- TODO: Checks
	if studioStyleGuideModifer == nil then
		studioStyleGuideModifer = StudioStyleGuide.Modifier.Default
	end

	return self._themes[self._themeUsed][studioStyleGuideColor][studioStyleGuideModifer]
end

return MockStudioTheme
