-- 基础信息
local base_info = {
	group_id = 199001036
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 36001, monster_id = 21030301, pos = { x = 787.177, y = 244.478, z = 294.664 }, rot = { x = 0.000, y = 145.912, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 402 },
	{ config_id = 36002, monster_id = 21010101, pos = { x = 788.687, y = 245.589, z = 288.360 }, rot = { x = 0.000, y = 136.840, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 402 },
	{ config_id = 36003, monster_id = 21010101, pos = { x = 790.594, y = 245.663, z = 289.768 }, rot = { x = 0.000, y = 187.623, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 402 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 36004, gadget_id = 70220065, pos = { x = 787.281, y = 245.591, z = 286.333 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 36005, gadget_id = 70220067, pos = { x = 787.162, y = 245.491, z = 287.811 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 36006, gadget_id = 70300089, pos = { x = 788.369, y = 244.836, z = 293.299 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 36007, gadget_id = 70300091, pos = { x = 791.400, y = 245.431, z = 287.337 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 },
	{ config_id = 36008, gadget_id = 70300086, pos = { x = 784.320, y = 243.443, z = 297.488 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 402 }
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
		monsters = { 36001, 36002, 36003 },
		gadgets = { 36004, 36005, 36006, 36007, 36008 },
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