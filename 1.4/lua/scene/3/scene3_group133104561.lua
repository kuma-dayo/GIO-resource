--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 561001, monster_id = 28020102, pos = { x = 693.490, y = 248.788, z = 981.022 }, rot = { x = 0.000, y = 252.289, z = 0.000 }, level = 19, drop_tag = "走兽", area_id = 6 },
	{ config_id = 561002, monster_id = 28030402, pos = { x = 708.152, y = 256.706, z = 980.186 }, rot = { x = 3.404, y = 327.063, z = 5.236 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 },
	{ config_id = 561004, monster_id = 28030402, pos = { x = 702.918, y = 259.389, z = 963.365 }, rot = { x = 0.000, y = 325.735, z = 0.000 }, level = 19, drop_tag = "鸟类", pose_id = 2, area_id = 6 }
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
		monsters = { 561001, 561002, 561004 },
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