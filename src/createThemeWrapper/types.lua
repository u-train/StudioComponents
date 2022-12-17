export type StudioStyleGuideColorStrings =
	"MainBackground"
	| "Titlebar"
	| "Dropdown"
	| "Tooltip"
	| "Notification"
	| "ScrollBar"
	| "ScrollBarBackground"
	| "TabBar"
	| "Tab"
	| "FilterButtonDefault"
	| "FilterButtonHover"
	| "FilterButtonChecked"
	| "FilterButtonAccent"
	| "FilterButtonBorder"
	| "FilterButtonBorderAlt"
	| "RibbonTab"
	| "RibbonTabTopBar"
	| "Button"
	| "MainButton"
	| "RibbonButton"
	| "ViewPortBackground"
	| "InputFieldBackground"
	| "Item"
	| "TableItem"
	| "CategoryItem"
	| "GameSettingsTableItem"
	| "GameSettingsTooltip"
	| "EmulatorBar"
	| "EmulatorDropDown"
	| "ColorPickerFrame"
	| "CurrentMarker"
	| "Border"
	| "DropShadow"
	| "Shadow"
	| "Light"
	| "Dark"
	| "Mid"
	| "MainText"
	| "SubText"
	| "TitlebarText"
	| "BrightText"
	| "DimmedText"
	| "LinkText"
	| "WarningText"
	| "ErrorText"
	| "InfoText"
	| "SensitiveText"
	| "ScriptSideWidget"
	| "ScriptBackground"
	| "ScriptText"
	| "ScriptSelectionText"
	| "ScriptSelectionBackground"
	| "ScriptFindSelectionBackground"
	| "ScriptMatchingWordSelectionBackground"
	| "ScriptOperator"
	| "ScriptNumber"
	| "ScriptString"
	| "ScriptComment"
	| "ScriptKeyword"
	| "ScriptBuiltInFunction"
	| "ScriptWarning"
	| "ScriptError"
	| "ScriptWhitespace"
	| "ScriptRuler"
	| "DocViewCodeBackground"
	| "DebuggerCurrentLine"
	| "DebuggerErrorLine"
	| "ScriptEditorCurrentLine"
	| "DiffFilePathText"
	| "DiffTextHunkInfo"
	| "DiffTextNoChange"
	| "DiffTextAddition"
	| "DiffTextDeletion"
	| "DiffTextSeparatorBackground"
	| "DiffTextNoChangeBackground"
	| "DiffTextAdditionBackground"
	| "DiffTextDeletionBackground"
	| "DiffLineNum"
	| "DiffLineNumSeparatorBackground"
	| "DiffLineNumNoChangeBackground"
	| "DiffLineNumAdditionBackground"
	| "DiffLineNumDeletionBackground"
	| "DiffFilePathBackground"
	| "DiffFilePathBorder"
	| "ChatIncomingBgColor"
	| "ChatIncomingTextColor"
	| "ChatOutgoingBgColor"
	| "ChatOutgoingTextColor"
	| "ChatModeratedMessageColor"
	| "Separator"
	| "ButtonBorder"
	| "ButtonText"
	| "InputFieldBorder"
	| "CheckedFieldBackground"
	| "CheckedFieldBorder"
	| "CheckedFieldIndicator"
	| "HeaderSection"
	| "Midlight"
	| "StatusBar"
	| "DialogButton"
	| "DialogButtonText"
	| "DialogButtonBorder"
	| "DialogMainButton"
	| "DialogMainButtonText"
	| "InfoBarWarningBackground"
	| "InfoBarWarningText"
	| "ScriptMethod"
	| "ScriptProperty"
	| "ScriptNil"
	| "ScriptBool"
	| "ScriptFunction"
	| "ScriptLocal"
	| "ScriptSelf"
	| "ScriptLuauKeyword"
	| "ScriptFunctionName"
	| "ScriptTodo"
	| "ScriptBracket"
	| "AttributeCog"
	
export type StudioStyleModifierStrings = "Default" | "Selected" | "Pressed" | "Disabled" | "Hover"

export type ModifierWrapper = (color: StudioStyleGuideColorStrings) -> Color3

export type Wrapper = {
	GetColor: (
		self: any,
		color: StudioStyleGuideColorStrings | Enum.StudioStyleGuideColor,
		modifier: StudioStyleModifierStrings | Enum.StudioStyleGuideModifier
	) -> Color3,
	Default: ModifierWrapper,
	Selected: ModifierWrapper,
	Pressed: ModifierWrapper,
	Disabled: ModifierWrapper,
	Hover: ModifierWrapper,
}

return nil
