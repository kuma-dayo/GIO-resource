-- 基础信息
local base_info = {
	group_id = 133217322
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 322002, monster_id = 20010801, pos = { x = -4706.206, y = 200.000, z = -3795.368 }, rot = { x = 0.000, y = 76.395, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 322003, monster_id = 20010801, pos = { x = -4710.917, y = 200.106, z = -3790.388 }, rot = { x = 359.546, y = 97.279, z = 356.820 }, level = 30, drop_tag = "史莱姆", area_id = 14 },
	{ config_id = 322004, monster_id = 20010801, pos = { x = -4712.684, y = 200.000, z = -3796.460 }, rot = { x = 0.000, y = 97.385, z = 0.000 }, level = 30, drop_tag = "史莱姆", area_id = 14 }
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
		{ config_id = 322001, monster_id = 20010901, pos = { x = -4706.917, y = 200.000, z = -3792.910 }, rot = { x = 0.000, y = 64.546, z = 0.000 }, level = 30, drop_tag = "大史莱姆", area_id = 14 }
	},
	gadgets = {
		{ config_id = 322005, gadget_id = 70290008, pos = { x = -4709.591, y = 200.000, z = -3794.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 322006, gadget_id = 70500000, pos = { x = -4709.591, y = 200.000, z = -3794.174 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3008, owner = 322005, area_id = 14 }
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
		monsters = { 322002, 322003, 322004 },
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