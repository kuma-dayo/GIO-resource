-- 基础信息
local base_info = {
	group_id = 133001325
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 325001, monster_id = 21010101, pos = { x = 1200.135, y = 259.231, z = -1542.230 }, rot = { x = 0.000, y = 35.338, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 325002, monster_id = 21010101, pos = { x = 1200.234, y = 259.231, z = -1540.402 }, rot = { x = 0.000, y = 123.763, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 325003, monster_id = 21010101, pos = { x = 1201.921, y = 259.231, z = -1541.611 }, rot = { x = 0.000, y = 303.785, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 325004, monster_id = 21010101, pos = { x = 1201.911, y = 259.231, z = -1539.806 }, rot = { x = 0.000, y = 216.154, z = 0.000 }, level = 19, drop_tag = "丘丘人", pose_id = 9012, area_id = 2 },
	{ config_id = 325005, monster_id = 21010701, pos = { x = 1226.165, y = 259.583, z = -1553.021 }, rot = { x = 0.000, y = 347.674, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 325006, monster_id = 21010701, pos = { x = 1261.273, y = 255.141, z = -1534.798 }, rot = { x = 0.000, y = 73.987, z = 0.000 }, level = 19, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 325007, monster_id = 21010401, pos = { x = 1262.749, y = 255.141, z = -1533.526 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 325008, monster_id = 21010401, pos = { x = 1290.724, y = 256.496, z = -1465.298 }, rot = { x = 0.000, y = 271.443, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 325009, monster_id = 21010401, pos = { x = 1290.343, y = 256.420, z = -1469.761 }, rot = { x = 0.000, y = 243.765, z = 0.000 }, level = 18, drop_tag = "远程丘丘人", pose_id = 9002, area_id = 2 },
	{ config_id = 325010, monster_id = 21010401, pos = { x = 1271.915, y = 269.055, z = -1550.784 }, rot = { x = 0.000, y = 31.864, z = 0.000 }, level = 19, drop_tag = "远程丘丘人", pose_id = 402, area_id = 2 }
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
		monsters = { 325001, 325002, 325003, 325004, 325005, 325006, 325007, 325008, 325009, 325010 },
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