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
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	regions = {
		{ config_id = 571001, shape = RegionShape.SPHERE, radius = 40, pos = { x = -2483.521, y = 441.616, z = -4396.608 }, area_id = 11 },
		{ config_id = 571002, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2476.966, y = 448.179, z = -4415.105 }, area_id = 11 },
		{ config_id = 571003, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2481.312, y = 446.620, z = -4418.448 }, area_id = 11 },
		{ config_id = 571004, shape = RegionShape.SPHERE, radius = 3, pos = { x = -2479.820, y = 446.682, z = -4417.263 }, area_id = 11 }
	},
	triggers = {
		{ config_id = 1571001, name = "ENTER_REGION_571001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571001", action = "action_EVENT_ENTER_REGION_571001", trigger_count = 0 },
		{ config_id = 1571002, name = "ENTER_REGION_571002", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571002", action = "action_EVENT_ENTER_REGION_571002", trigger_count = 0 },
		{ config_id = 1571003, name = "ENTER_REGION_571003", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571003", action = "action_EVENT_ENTER_REGION_571003", trigger_count = 0 },
		{ config_id = 1571004, name = "ENTER_REGION_571004", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_571004", action = "action_EVENT_ENTER_REGION_571004", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = BETA屏蔽,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================