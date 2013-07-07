class TEST extends AIController 
{
}

function TEST::PlaceStation(tile, cargo, target, source, is_source_station)
{
	while(true) {
		tile++
		{
			local test = AITestMode()
			if(!AIRail.BuildRailStation(tile, AIRail.RAILTRACK_NW_SE, TEST.GetSetting("station_width"), TEST.GetSetting("station_length"), AIStation.STATION_NEW)){
				continue
			}
		}
		if(AIRail.BuildNewGRFRailStation(tile, AIRail.RAILTRACK_NW_SE, TEST.GetSetting("station_width"), TEST.GetSetting("station_length"), AIStation.STATION_NEW, cargo, target, source, TEST.GetSetting("distance"), is_source_station)) {
			break
		}
		AILog.Warning(AIError.GetLastErrorString())
		Sleep(100)
	}
	AIBaseStation.SetName(AIStation.GetStationID(tile), AICargo.GetCargoLabel(cargo) + " source")
	tile+=3
	return tile
}

function TEST::Start()
{
	AICompany.SetLoanAmount(AICompany.GetMaxLoanAmount())
	AIRail.SetCurrentRailType(AIRailTypeList().Begin())
	local tile = 0
	local cargo_list = AICargoList();
	for (local cargo = cargo_list.Begin(); !cargo_list.IsEnd(); cargo = cargo_list.Next()) {
		AILog.Info(AICargo.GetCargoLabel(cargo))

		local industries = AIIndustryTypeList()
		local target = -1
		local source = -1

		for (local i = industries.Begin(); !industries.IsEnd(); i = industries.Next()) {
			if(AIIndustryType.GetProducedCargo(i).HasItem(cargo)) {
				source = i
			}
			if(AIIndustryType.GetAcceptedCargo(i).HasItem(cargo)) {
				target = i
			}
		}

		AILog.Info(AIIndustryType.GetName(source) + " -> " + AIIndustryType.GetName(target))
		if(!AIIndustryType.IsValidIndustryType(target) || !AIIndustryType.IsValidIndustryType(source)) {
			AILog.Error("Industries are missing")
			tile++
			continue
		}

		tile = TEST.PlaceStation(tile, cargo, target, source, true)
		tile = TEST.PlaceStation(tile, cargo, target, source, false)
	}
}