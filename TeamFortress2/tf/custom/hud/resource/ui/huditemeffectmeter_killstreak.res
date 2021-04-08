"Resource/UI/HudItemEffectMeter_Killstreak.res"
{
	HudItemEffectMeter
	{
		"fieldName"									"HudItemEffectMeter"
		"visible"									"1"
		"enabled"									"1"
		"xpos"										"c-45"
		"ypos"										"r128"
		"wide"										"15"
		"tall"										"15"
		"MeterFG"									"White"
		"MeterBG"									"Gray"
	}
	

	"ItemEffectMeterCount"
	{
		"ControlName"								"CExLabel"
		"fieldName"									"ItemEffectMeterCount"
		"xpos"										"0"
		"ypos"										"0"
		"zpos"										"3"
		"wide"										"f0"
		"tall"										"15"
		"visible"									"1"
		"enabled"									"1"
		"proportionaltoparent"						"1"
		"labelText"									"%progresscount%"
		"textAlignment"								"center"
		"font"										"Game 12"
		"fgcolor"									"White"
		
		"pin_to_sibling" 							"HudItemEffectMeter"
		"pin_corner_to_sibling" 					"PIN_CENTER_RIGHT"
		"pin_to_sibling_corner" 					"PIN_CENTER_LEFT"
	}
	
		"HudDamageAccountBG"
	{
		"ControlName"	"ImagePanel"
		"fieldName" "HudDamageAccountBG"
		"xpos"										"0"
		"ypos"										"0"
		"zpos"										"1"
		"wide"										"15"
		"tall"	 									"15"
		"fillColor" 									"Shadow"
		"pin_to_sibling" 							    "ItemEffectMeterCount"
	}
	
	
	//REMOVED
	"ItemEffectMeterBG"
	{
		"ControlName"								"CTFImagePanel"
		"fieldName"									"ItemEffectMeterBG"
		"xpos"										"9999"
	}
	"ItemEffectMeterLabel"
	{
		"ControlName"								"CExLabel"
		"fieldName"									"ItemEffectMeterLabel"
		"xpos"										"9999"
	}
	"ItemEffectMeter"
	{	
		"ControlName"								"ContinuousProgressBar"
		"fieldName"									"ItemEffectMeter"
		"xpos"										"9999"
	}
}