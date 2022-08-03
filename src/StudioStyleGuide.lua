-- I hate this, I hate this so much.

local success, _ = pcall(function()
	return Enum.StudioStyleGuideColor.MainBackground
end)

if success then
	local Color = {}

	for _key, value in next, Enum.StudioStyleGuideColor:GetEnumItems() do
		Color[value.Name] = value.Value
	end

	local Modifier = {}

	for _key, value in next, Enum.StudioStyleGuideModifier:GetEnumItems() do
		Modifier[value.Name] = value.Value
	end

	return {
		Color = Color,
		Modifier = Modifier,
	}
else
	local StudioStyleGuide = {}

	StudioStyleGuide.Color = {
		MainBackground = {},
		Titlebar = {},
		Dropdown = {},
		Tooltip = {},
		Notification = {},
		ScrollBar = {},
		ScrollBarBackground = {},
		TabBar = {},
		Tab = {},
		FilterButtonDefault = {},
		FilterButtonHover = {},
		FilterButtonChecked = {},
		FilterButtonAccent = {},
		FilterButtonBorder = {},
		FilterButtonBorderAlt = {},
		RibbonTab = {},
		RibbonTabTopBar = {},
		Button = {},
		MainButton = {},
		RibbonButton = {},
		ViewPortBackground = {},
		InputFieldBackground = {},
		Item = {},
		TableItem = {},
		CategoryItem = {},
		GameSettingsTableItem = {},
		GameSettingsTooltip = {},
		EmulatorBar = {},
		EmulatorDropDown = {},
		ColorPickerFrame = {},
		CurrentMarker = {},
		Border = {},
		DropShadow = {},
		Shadow = {},
		Light = {},
		Dark = {},
		Mid = {},
		MainText = {},
		SubText = {},
		TitlebarText = {},
		BrightText = {},
		DimmedText = {},
		LinkText = {},
		WarningText = {},
		ErrorText = {},
		InfoText = {},
		SensitiveText = {},
		ScriptSideWidget = {},
		ScriptBackground = {},
		ScriptText = {},
		ScriptSelectionText = {},
		ScriptSelectionBackground = {},
		ScriptFindSelectionBackground = {},
		ScriptMatchingWordSelectionBackground = {},
		ScriptOperator = {},
		ScriptNumber = {},
		ScriptString = {},
		ScriptComment = {},
		ScriptKeyword = {},
		ScriptBuiltInFunction = {},
		ScriptWarning = {},
		ScriptError = {},
		ScriptWhitespace = {},
		ScriptRuler = {},
		DocViewCodeBackground = {},
		DebuggerCurrentLine = {},
		DebuggerErrorLine = {},
		ScriptEditorCurrentLine = {},
		DiffFilePathText = {},
		DiffTextHunkInfo = {},
		DiffTextNoChange = {},
		DiffTextAddition = {},
		DiffTextDeletion = {},
		DiffTextSeparatorBackground = {},
		DiffTextNoChangeBackground = {},
		DiffTextAdditionBackground = {},
		DiffTextDeletionBackground = {},
		DiffLineNum = {},
		DiffLineNumSeparatorBackground = {},
		DiffLineNumNoChangeBackground = {},
		DiffLineNumAdditionBackground = {},
		DiffLineNumDeletionBackground = {},
		DiffFilePathBackground = {},
		DiffFilePathBorder = {},
		ChatIncomingBgColor = {},
		ChatIncomingTextColor = {},
		ChatOutgoingBgColor = {},
		ChatOutgoingTextColor = {},
		ChatModeratedMessageColor = {},
		Separator = {},
		ButtonBorder = {},
		ButtonText = {},
		InputFieldBorder = {},
		CheckedFieldBackground = {},
		CheckedFieldBorder = {},
		CheckedFieldIndicator = {},
		HeaderSection = {},
		Midlight = {},
		StatusBar = {},
		DialogButton = {},
		DialogButtonText = {},
		DialogButtonBorder = {},
		DialogMainButton = {},
		DialogMainButtonText = {},
		InfoBarWarningBackground = {},
		InfoBarWarningText = {},
		ScriptMethod = {},
		ScriptProperty = {},
		ScriptNil = {},
		ScriptBool = {},
		ScriptFunction = {},
		ScriptLocal = {},
		ScriptSelf = {},
		ScriptLuauKeyword = {},
		ScriptFunctionName = {},
		ScriptTodo = {},
		ScriptBracket = {},
		AttributeCog = {},
	}

	StudioStyleGuide.Modifier = {
		Default = {},
		Selected = {},
		Pressed = {},
		Disabled = {},
		Hover = {},
	}

	return StudioStyleGuide
end
