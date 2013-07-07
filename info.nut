class TEST extends AIInfo {
	function GetAuthor()      { return "Kogut"; }
	function GetName()        { return "TEST"; }
	function GetVersion()     { return 1; }
	function GetDescription() { return "TEST AI"; }
	function GetAPIVersion()  { return "1.3"; }
	function CreateInstance() { return "TEST"; }
	function GetShortName()   { return "TEST"; }
	function GetDate()        { return "bogus"; }
	function GetURL() {return "https://github.com/Bulwersator/Test-OpenTTD-AI";}

	function GetSettings() {
	AddSetting( {
		name = "station_length",
		description = "station_length",
		easy_value = 7,
		medium_value = 7,
		hard_value = 7,
		custom_value = 7,
		min_value = 0,
		max_value = 1000,
		flags = CONFIG_INGAME
	});
	AddSetting( {
		name = "station_width",
		description = "station_width",
		easy_value = 2,
		medium_value = 2,
		hard_value = 2,
		custom_value = 2,
		min_value = 0,
		max_value = 1000,
		flags = CONFIG_INGAME
	});
	AddSetting( {
		name = "distance",
		description = "distance",
		easy_value = 7,
		medium_value = 7,
		hard_value = 7,
		custom_value = 7,
		min_value = 0,
		max_value = 1000,
		flags = CONFIG_INGAME
	});
	}
}

RegisterAI(TEST());