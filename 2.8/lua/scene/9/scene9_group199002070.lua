-- 基础信息
local base_info = {
	group_id = 199002070
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
	monsters = {
		{ config_id = 70001, monster_id = 21010101, pos = { x = 393.430, y = 120.983, z = -604.387 }, rot = { x = 0.000, y = 248.760, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 401 },
		{ config_id = 70002, monster_id = 21020101, pos = { x = 401.076, y = 123.030, z = -600.100 }, rot = { x = 0.000, y = 260.049, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 401 }
	},
	gadgets = {
		{ config_id = 70003, gadget_id = 70310175, pos = { x = 367.719, y = 120.934, z = -620.646 }, rot = { x = 0.000, y = 11.526, z = 0.000 }, level = 20, area_id = 401 }
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