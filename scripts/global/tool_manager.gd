extends Node

var selected_tool:DataTypes.Tools=DataTypes.Tools.none

signal on_tool_selected(tool:DataTypes.Tools)

func select_tool(tool:DataTypes.Tools)->void:
	on_tool_selected.emit(tool)
	selected_tool=tool
