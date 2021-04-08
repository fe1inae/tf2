"Resource/UI/HudDamageAccount.res"
{
	"CDamageAccountPanel"
	{
		"fieldName"									"CDamageAccountPanel"
		"delta_item_x"								"0"
		"delta_item_start_y"							"0"
		"delta_item_end_y"							"0"
		"NegativeColor"								"Damage Numbers"
		"delta_lifetime"							"4"
		"delta_item_font"							"Game 22 Shadow"
	}
	
	"DamageAccountValue"
	{
		"ControlName"								"CExLabel"
		"fieldName"									"DamageAccountValue"
		"xpos"										"c-20"
		"ypos"										"r184"
		"zpos"										"2"
		"wide"										"50"
		"tall"										"25"
		"visible"									"1"
		"enabled"									"1"
		"labelText"									"%metal%"
		"textAlignment"								"center"
		"fgcolor"									"Last Damage Done"
		"font"										"Game 12"
	}
	
	"HudDamageAccountBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName" "HudDamageAccountBG"
		"xpos"										"-10"
		"ypos"										"-5"
		"zpos"										"1"
		"wide"										"30"
		"tall"	 									"15"
		"fillColor" 									"Shadow"
		"pin_to_sibling" 							    "DamageAccountValue"
	}
}