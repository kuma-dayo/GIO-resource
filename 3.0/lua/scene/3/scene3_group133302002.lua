-- 基础信息
local base_info = {
	group_id = 133302002
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	-- 加载雨水倒流天气
	{ config_id = 2001, shape = RegionShape.SPHERE, radius = 60, pos = { x = 155.883, y = 98.439, z = 2960.031 }, area_id = 20 }
}

-- 触发器
triggers = {
	-- 加载雨水倒流天气
	{ config_id = 1002001, name = "ENTER_REGION_2001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_2001", action = "action_EVENT_ENTER_REGION_2001", trigger_count = 0 }
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { 2001 },
		triggers = { "ENTER_REGION_2001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_2001(context, evt)
	if evt.param1 ~= 2001 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_2001(context, evt)
	-- 设置气候特效偏移
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 0, "Eff_Weather_HeavyRainTBS_DqTBS", {160.1756,139.7958,2953.302}, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local ratioParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 3, "Eff_Weather_HeavyRainTBS_DqTBS", ratioParam, {0}) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	-- 设置气候特效偏移
	local floatParam={1,0,15}
	local intParam={1}
	if 0~=ScriptLib.SetEnvironmentEffectState(context, 2, "Eff_Weather_HeavyRainTBS_DqTBS", floatParam, intParam) then
	   ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : SetEnvironmentEffectFailed")
	end
	
	return 0
end