-- 基础信息
local base_info = {
	group_id = 133223384
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
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 384001, gadget_id = 70290160, pos = { x = -6191.084, y = 222.026, z = -2926.686 }, rot = { x = 0.000, y = 193.432, z = 0.000 }, level = 33, state = GadgetState.GearStop, persistent = true, area_id = 18 }
	},
	triggers = {
		{ config_id = 1384002, name = "VARIABLE_CHANGE_384002", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_384002", action = "action_EVENT_VARIABLE_CHANGE_384002" }
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
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================