-- 基础信息
local base_info = {
	group_id = 133212459
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
		{ config_id = 459001, monster_id = 21010101, pos = { x = -4223.574, y = 199.177, z = -2473.977 }, rot = { x = 0.000, y = 93.353, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 13 },
		{ config_id = 459002, monster_id = 21010201, pos = { x = -4219.842, y = 200.824, z = -2466.464 }, rot = { x = 0.000, y = 7.000, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 },
		{ config_id = 459003, monster_id = 22010201, pos = { x = -4220.774, y = 198.717, z = -2473.939 }, rot = { x = 0.000, y = 108.815, z = 0.000 }, level = 27, drop_tag = "深渊法师", pose_id = 9013, area_id = 13 },
		{ config_id = 459007, monster_id = 21010101, pos = { x = -4221.882, y = 199.460, z = -2471.281 }, rot = { x = 0.000, y = 160.675, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9012, area_id = 13 },
		{ config_id = 459008, monster_id = 21010101, pos = { x = -4221.280, y = 200.979, z = -2466.048 }, rot = { x = 0.000, y = 22.911, z = 0.000 }, level = 27, drop_tag = "丘丘人", pose_id = 9016, area_id = 13 }
	},
	gadgets = {
		{ config_id = 459004, gadget_id = 70220013, pos = { x = -4221.472, y = 200.249, z = -2464.807 }, rot = { x = 0.000, y = 0.000, z = 320.638 }, level = 27, area_id = 13 },
		{ config_id = 459005, gadget_id = 70220014, pos = { x = -4219.551, y = 200.838, z = -2465.087 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 13 },
		{ config_id = 459006, gadget_id = 70210101, pos = { x = -4220.316, y = 201.395, z = -2465.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用稻妻", area_id = 13 }
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