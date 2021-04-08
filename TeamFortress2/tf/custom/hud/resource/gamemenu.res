#base "../customizations/pausemenu background.res"

"GameMenu"
{
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////MAIN BUTTONS/////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	"Servers"
	{
		"label" 									"SERVERS"
		"command" 									"OpenServerBrowser"
	}
	"Create"
	{
		"label"										"CREATE"
		"command"									"OpenCreateMultiplayerGameDialog"
	}
	"Items"
	{
		"label"										"ITEMS"
		"command"									"engine open_charinfo"
	}
	"Store"
	{
		"label"										"STORE"
		"command"									"engine open_store"
	}
	"Settings"
	{
		"label"										"OPTIONS"
		"command"									"OpenOptionsDialog"
	}
	"AdvancedSettings"
	{
		"label"										"ADVANCED"
		"command"									"opentf2options"
	}
	
	"Walkway"
	{
		"label"										"WALKWAY"
		"command"                                   "engine sv_allow_point_servercommand always; map tr_walkway_fix"
	}
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////IN-GAME ONLY BUTTONS/////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	"Vote"
	{
		"label"										"y"
		"command"									"callvote"
		"OnlyInGame" 								"1"
	}
	"Mute"
	{
		"label"										"h"
		"command"									"OpenMutePlayerDialog"
		"OnlyInGame" 								"1"
	}
	"Report"
	{
		"label"										"f"
		"command"									"OpenReportPlayerDialog"
		"OnlyInGame"								"1"
	}

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////BOTTOM MENU BUTTONS/////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	"Contracker"
	{
		"label" 									"B"
		"command" 									"questlog"
		"tooltip" 									"Contracker"
	}
	"Streams"
	{
		"label" 									"0"
		"command" 									"watch_stream"
		"tooltip" 									"Streams"
	}
	"HomeServer"
	{
		"label" 									"w"
		"command" 									"engine" 				//"engine connect *server ip*"
		"tooltip" 									"Favorite Server"
	}
	"DemoUI"
	{
		"label" 									"F"
		"command" 									"engine demoui"
		"tooltip" 									"DemoUI"
	}
	"Achievements"
	{
		"label"										"V"
		"command"									"OpenAchievementsDialog"
		"tooltip" 									"Achievements"
	}
	"Replays"
	{
		"label"										"^"
		"command"									"engine replay_reloadbrowser"
		"tooltip" 									"Replays"
	}
	"Workshop"
	{
		"label"										"{"
		"command"									"engine OpenSteamWorkshopDialog"
		"tooltip" 									"Workshop"
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////IN-GAME TOOLS////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
}