"Resource/UI/HudAmmoWeapons.res"
{
	"AMMOAnchor"									//Moves the Ammos
	{
		"ControlName"									"EditablePanel"
		"fieldName"									"AMMOAnchor"
		"xpos"										"c25"
		"ypos"										"r140"
		"wide"										"2"
		"zpos"										"0"
		"tall"										"30"
		"visible"									"0"
		"enabled"									"1"
	}
	
	"AmmoInClip"
	{
		"ControlName"									"CExLabel"
		"fieldName"									"AmmoInClip"
		"font"										"Game 24"
		"fgcolor"									"Ammo In Clip"
		"xpos"										"9"
		"ypos"										"-5"
		"zpos"										"5"
		"wide"										"50"
		"tall"										"30"
		"visible"									"0"
		"enabled"									"1"
		"textAlignment"								"center"
		"labelText"									"%Ammo%"
		
		"pin_to_sibling"								"AmmoAnchor"
		"pin_corner_to_sibling"						"PIN_TOPRIGHT"
		"pin_to_sibling_corner"						"PIN_TOPLEFT"
	}
	"AmmoInReserve"
	{
		"ControlName"									"CExLabel"
		"fieldName"									"AmmoInReserve"
		"font"										"Game 14"
		"fgcolor"									"Ammo In Reserve"
		"xpos"										"-38"
		"ypos"										"-6"
		"zpos"										"7"
		"wide"										"50"
		"tall"										"30"
		"visible"									"0"
		"enabled"									"1"
		"textAlignment"								"center"
		"labelText"									"%AmmoInReserve%"
		
		"pin_to_sibling"							    "AmmoAnchor"
		"pin_corner_to_sibling"						"PIN_TOPLEFT"
		"pin_to_sibling_corner"						"PIN_TOPRIGHT"
	}	
	"AmmoNoClip"
	{
		"ControlName"									"CExLabel"
		"fieldName"									"AmmonoClip"
		"font"										"Game 24"
		"fgcolor"									"Ammo No Clip"
		"xpos"										"-25"
		"ypos"    									"-6"
		"zpos"										"5"
		"wide"										"50"
		"tall"										"30"
		"visible"									"0"
		"enabled"									"1"
		"textAlignment"								"center"	
		"labelText"									"%Ammo%"
		
		"pin_to_sibling"								"AmmoAnchor"
		"pin_corner_to_sibling"						"PIN_CENTER_TOP"
		"pin_to_sibling_corner"						"PIN_CENTER_TOP"
	}
	
	"HudAmmoBG"
	{
		"ControlName"									"ImagePanel"
		"fieldName" 									"HudAmmoBG"
		"xpos"										"50"
		"ypos"										"-6"
		"zpos"										"1"
		"wide"										"50"
		"tall"	 									"30"
		"fillColor" 									"Shadow"
		"pin_to_sibling" 							    "AmmoAnchor"
	}
	
	
	
	"AmmoInClipShadow"
	{
		"ControlName"								"CExLabel"
		"fieldName"									"AmmoInClipShadow"
		"visible" "0"
		"enabled"									"0"
		"xpos" "9999"
	}
	"AmmoInReserveShadow"
	{
		"ControlName"								"CExLabel"
		"fieldName"								"AmmoInReserveShadow"
		"visible" "0"
		"enabled"								"0"
		"xpos" "9999"
	}
	"AmmoNoClipShadow"
	{
		"ControlName"								    "CExLabel"
		"fieldName"									"AmmoNoClipShadow"
		"visible" "0"
		"enabled"									"0"
		"xpos" "9999"
	}
	"HudWeaponLowAmmoImage"
	{
		"ControlName"								"ImagePanel"
		"fieldName"									"HudWeaponLowAmmoImage"
		"xpos"										"0"
	}
}