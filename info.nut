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
}

RegisterAI(TEST());