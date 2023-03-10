-- 基础信息
local base_info = {
	group_id = 133106579
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
	{ config_id = 579002, gadget_id = 70220038, pos = { x = -847.931, y = 160.175, z = 1906.885 }, rot = { x = 356.953, y = 134.773, z = 346.236 }, level = 36, isOneoff = true, persistent = true, area_id = 19 },
	{ config_id = 579003, gadget_id = 70290200, pos = { x = -866.053, y = 168.216, z = 1877.492 }, rot = { x = 0.000, y = 218.652, z = 0.000 }, level = 36, area_id = 19 },
	{ config_id = 579008, gadget_id = 70217014, pos = { x = -861.670, y = 150.897, z = 1836.657 }, rot = { x = 16.726, y = 229.726, z = 1.548 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 },
	{ config_id = 579009, gadget_id = 70217014, pos = { x = -855.978, y = 184.104, z = 1993.097 }, rot = { x = 358.648, y = 229.792, z = 1.180 }, level = 26, drop_tag = "摩拉石箱璃月", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 19 }
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
		{ config_id = 579011, monster_id = 28030101, pos = { x = -736.076, y = 173.481, z = 1983.697 }, rot = { x = 0.000, y = 238.973, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 },
		{ config_id = 579012, monster_id = 28030101, pos = { x = -734.256, y = 178.625, z = 1944.799 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", pose_id = 901, area_id = 19 }
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
		gadgets = { 579002, 579003, 579008, 579009 },
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