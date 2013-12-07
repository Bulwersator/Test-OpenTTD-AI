class A
{
	field = null;
}

class B
{
	field = null;
}

class TEST extends AIController 
{
}

function TEST::Start()
{
	local test = A();
	test.field = B();
	test.field.field = 10;
	local copy = clone test;
	test.field.field = 9;
	AILog.Info(copy.field.field);
}