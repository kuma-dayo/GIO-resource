-- 基础信息
local base_info = {
	group_id = 133106805
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 805001, monster_id = 28030201, pos = { x = -891.159, y = 264.297, z = 1298.041 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805002, monster_id = 28030201, pos = { x = -620.331, y = 259.032, z = 1303.505 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805003, monster_id = 28030201, pos = { x = -564.410, y = 265.759, z = 1041.573 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805004, monster_id = 28030201, pos = { x = -716.276, y = 274.545, z = 978.017 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805005, monster_id = 28030201, pos = { x = -593.115, y = 353.569, z = 823.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805006, monster_id = 28030201, pos = { x = -866.446, y = 259.620, z = 823.469 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805007, monster_id = 28030201, pos = { x = -366.902, y = 281.462, z = 767.507 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805008, monster_id = 28030201, pos = { x = -141.282, y = 260.120, z = 1041.214 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 6 },
	{ config_id = 805009, monster_id = 28030201, pos = { x = -145.141, y = 261.805, z = 799.791 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 24, drop_tag = "鸟类", area_id = 8 },
	{ config_id = 805010, monster_id = 28030201, pos = { x = -389.446, y = 378.591, z = 1319.653 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "鸟类", area_id = 19 },
	{ config_id = 805011, monster_id = 28030202, pos = { x = -801.211, y = 183.763, z = 1073.135 }, rot = { x = 0.000, y = 329.218, z = 0.000 }, level = 32, drop_tag = "鸟类", area_id = 8 }
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
		monsters = { 805001, 805002, 805003, 805004, 805005, 805006, 805007, 805008, 805009, 805010, 805011 },
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