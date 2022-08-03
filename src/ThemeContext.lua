local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local MockStudioTheme = require(script.Parent.MockStudioTheme)

return Roact.createContext(MockStudioTheme)