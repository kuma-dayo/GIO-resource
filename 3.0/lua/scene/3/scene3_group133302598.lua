-- 基础信息
local base_info = {
	group_id = 133302598
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
	{ config_id = 598001, gadget_id = 70220050, pos = { x = -237.608, y = 223.465, z = 2996.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 598002, gadget_id = 70220051, pos = { x = -219.744, y = 222.234, z = 3008.120 }, rot = { x = 346.616, y = 221.713, z = 62.725 }, level = 27, area_id = 24 },
	{ config_id = 598003, gadget_id = 70220052, pos = { x = -246.726, y = 225.676, z = 3011.461 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 598004, gadget_id = 70220051, pos = { x = -250.349, y = 224.335, z = 3008.991 }, rot = { x = 14.322, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
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
		{ config_id = 598005, gadget_id = 70211101, pos = { x = -238.819, y = 223.423, z = 3004.784 }, rot = { x = 0.000, y = 227.190, z = 0.000 }, level = 26, drop_tag = "解谜低级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 }
	},
	triggers = {
		{ config_id = 1598006, name = "ANY_GADGET_DIE_598006", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_598006", action = "action_EVENT_ANY_GADGET_DIE_598006" }
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
		gadgets = { 598001, 598002, 598003, 598004 },
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