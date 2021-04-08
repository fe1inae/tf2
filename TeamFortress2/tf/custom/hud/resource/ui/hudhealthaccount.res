"Resource/UI/HudHealthAccount.res"
{
	"CHealthAccountPanel"
	{
		"fieldName"									"CHealthAccountPanel"
		"text_x"										"0"
		"text_y"										"0"
		"delta_item_x"								"0"
		"delta_item_start_y"							"0"
		"delta_item_end_y"							"0"
		"PositiveColor"								"Heal Numbers"
		"delta_lifetime"								"60"
		"delta_item_font"								"Game 12"
		"visible"									"0"
		"enabled"									"0"
		"xpos" "9999"
	}
	
	"HealAccountValue"
	{
		"ControlName"								"CExLabel"
		"fieldName"									"HealAccountValue"
		"xpos"										"c20"
		"ypos"										"r164"
		"zpos"										"2"
		"wide"										"50"
		"tall"										"25"
		"visible"									"0"
		"enabled"									"0"
		"labelText"									"%metal%"
		"textAlignment"								"center"
		"fgcolor"									"Heal Numbers"
		"font"										"Game 12"
	}
	
	"HudHealthAccountBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName" "HudHealthAccountBG"
		"xpos"										"0"
		"ypos"										"0"
		"zpos"										"1"
		"wide"										"30"
		"tall"	 									"15"
		"fillColor" 									"Shadow"
		"pin_to_sibling" 							    "CHealthAccountPanel"
		"visible"									"0"
		"enabled"									"0"
	}
}