-- 基础信息
local base_info = {
	group_id = 133301348
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 348006, monster_id = 28050106, pos = { x = -53.684, y = 223.190, z = 3274.380 }, rot = { x = 0.000, y = 48.643, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
	{ config_id = 348007, monster_id = 28050106, pos = { x = -61.275, y = 223.190, z = 3278.218 }, rot = { x = 0.000, y = 256.716, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 }
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
		{ config_id = 348001, monster_id = 28050106, pos = { x = -52.911, y = 230.646, z = 3262.928 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
		{ config_id = 348002, monster_id = 28050106, pos = { x = -58.652, y = 227.504, z = 3269.329 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
		{ config_id = 348003, monster_id = 28050106, pos = { x = -64.704, y = 227.875, z = 3264.510 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 },
		{ config_id = 348004, monster_id = 28050106, pos = { x = -70.070, y = 232.587, z = 3257.824 }, rot = { x = 0.000, y = 48.643, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 22 },
		{ config_id = 348005, monster_id = 28050106, pos = { x = -58.205, y = 231.690, z = 3262.292 }, rot = { x = 0.000, y = 48.643, z = 0.000 }, level = 27, drop_tag = "魔法生物", area_id = 29 }
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
		monsters = { 348006, 348007 },
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