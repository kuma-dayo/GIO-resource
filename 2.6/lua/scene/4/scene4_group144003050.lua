-- 基础信息
local base_info = {
	group_id = 144003050
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
		{ config_id = 50001, monster_id = 21010901, pos = { x = -343.204, y = 209.018, z = 119.261 }, rot = { x = 0.000, y = 206.984, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 103 },
		{ config_id = 50002, monster_id = 22010301, pos = { x = -348.995, y = 202.446, z = 114.938 }, rot = { x = 0.000, y = 90.100, z = 0.000 }, level = 1, drop_tag = "深渊法师", pose_id = 9013, area_id = 103 },
		{ config_id = 50003, monster_id = 21010701, pos = { x = -344.946, y = 202.444, z = 111.192 }, rot = { x = 0.000, y = 329.123, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013, area_id = 103 },
		{ config_id = 50004, monster_id = 21010701, pos = { x = -343.535, y = 202.444, z = 114.155 }, rot = { x = 0.000, y = 269.251, z = 0.000 }, level = 1, drop_tag = "丘丘人", pose_id = 9013, area_id = 103 }
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