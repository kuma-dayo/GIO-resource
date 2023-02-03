-- 基础信息
local base_info = {
	group_id = 133303625
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 625001, monster_id = 28060201, pos = { x = -1710.319, y = 231.809, z = 3488.800 }, rot = { x = 0.000, y = 152.366, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 4, area_id = 23 },
	{ config_id = 625002, monster_id = 28020314, pos = { x = -1673.635, y = 200.807, z = 3470.751 }, rot = { x = 0.000, y = 114.559, z = 0.000 }, level = 30, drop_tag = "走兽", disableWander = true, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
	{ config_id = 625004, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1711.196, y = 213.427, z = 3485.795 }, area_id = 23 }
}

-- 触发器
triggers = {
	{ config_id = 1625004, name = "ENTER_REGION_625004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_625004", action = "action_EVENT_ENTER_REGION_625004" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 625003, monster_id = 28060201, pos = { x = -1750.715, y = 234.382, z = 3471.156 }, rot = { x = 0.000, y = 145.776, z = 0.000 }, level = 30, drop_tag = "走兽", pose_id = 4, area_id = 23 }
	},
	regions = {
		{ config_id = 625005, shape = RegionShape.SPHERE, radius = 5, pos = { x = -1747.759, y = 226.413, z = 3468.927 }, area_id = 23 }
	},
	triggers = {
		{ config_id = 1625005, name = "ENTER_REGION_625005", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
	}
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
		monsters = { 625002 },
		gadgets = { },
		regions = { 625004 },
		triggers = { "ENTER_REGION_625004" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_625004(context, evt)
	if evt.param1 ~= 625004 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_625004(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 625001, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end