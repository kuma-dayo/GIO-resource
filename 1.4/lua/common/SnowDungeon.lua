--去重随机
function RandomArea(context, mode)

	math.randomseed(ScriptLib.GetServerTime(context))

	--根据模式不同随机一套冷板、暖板数量
	local randomCold = 0
	local randomWarm = 0

	if mode == 0 then
		randomCold = math.random(2,3)
		randomWarm = 1
	end

	if mode == 1 then
		randomCold = math.random(2,3)
		randomWarm = math.random(0,1)
	end

	

	local  PlatformTable = {11003,11004,11005,11006,11007,11008,11009,11010,11011}

	local randomIdx= 0

	--初始化所有场
	for i=1,9 do
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[i], GadgetState.Default)
	end


	--抽取3个冰场
	for i=0,randomCold do
		randomIdx = math.random(9-i)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[randomIdx], GadgetState.GearStop)
		--使用后移除该字段
		table.remove(PlatformTable, randomIdx)
	end

	--抽取0-1个暖场
	if randomWarm == 1 then
		randomIdx = math.random(8-randomCold)
		ScriptLib.SetGroupGadgetStateByConfigId(context, 0, PlatformTable[randomIdx], GadgetState.GearStart)
	end

end	