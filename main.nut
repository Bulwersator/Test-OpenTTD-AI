require("test.nut");
const TESTLOCALVALUE = 0;

class TEST extends AIController 
{
}

function TEST::Start()
{
AILog.Info(TESTLOCALVALUE);
AILog.Info(TESTVALUE);
}