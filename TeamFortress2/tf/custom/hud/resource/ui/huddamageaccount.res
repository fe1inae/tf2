"Resource/UI/HudDamageAccount.res"
{
	"CDamageAccountPanel"
	{
		"fieldName"	                                "CDamageAccountPanel"
		"text_x"	                                    "0"
		"text_y"	                                    "0"
		"delta_item_end_y"	                        "0"
		"PositiveColor"	                            "GreenSolid"
		"delta_lifetime"	                            "2"
		"delta_item_font"	                            "Game 18"
		"delta_item_font_big"	                        "Game 18"
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