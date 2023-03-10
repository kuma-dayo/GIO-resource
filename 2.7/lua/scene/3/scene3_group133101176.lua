-- 基础信息
local base_info = {
	group_id = 133101176
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
		{ config_id = 176001, monster_id = 28050102, pos = { x = 1325.537, y = 273.354, z = 1559.236 }, rot = { x = 0.000, y = 236.873, z = 0.000 }, level = 19, drop_tag = "魔法生物", area_id = 6 },
		{ config_id = 176002, monster_id = 28050102, pos = { x = 1326.547, y = 274.068, z = 1563.209 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "魔法生物", area_id = 6 },
		{ config_id = 176003, monster_id = 28050102, pos = { x = 1245.201, y = 278.832, z = 1518.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "魔法生物", area_id = 6 },
		{ config_id = 176004, monster_id = 28050102, pos = { x = 1262.015, y = 280.700, z = 1533.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "魔法生物", area_id = 6 }
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