--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 194005, monster_id = 21010401, pos = { x = 231.252, y = 200.000, z = -449.766 }, rot = { x = 0.000, y = 197.933, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 194001, gadget_id = 70220026, pos = { x = 232.263, y = 199.840, z = -445.907 }, rot = { x = 11.063, y = 320.497, z = 13.103 }, level = 1, area_id = 101 },
	{ config_id = 194002, gadget_id = 70220026, pos = { x = 233.116, y = 199.888, z = -450.193 }, rot = { x = 17.500, y = 328.730, z = 8.466 }, level = 1, area_id = 101 },
	{ config_id = 194003, gadget_id = 70220013, pos = { x = 230.327, y = 199.840, z = -447.995 }, rot = { x = 0.000, y = 0.000, z = 352.544 }, level = 1, area_id = 101 },
	{ config_id = 194004, gadget_id = 70220014, pos = { x = 232.271, y = 199.833, z = -448.042 }, rot = { x = 0.000, y = 0.000, z = 3.729 }, level = 1, area_id = 101 },
	{ config_id = 194006, gadget_id = 70950093, pos = { x = 228.902, y = 200.000, z = -456.096 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, autopick = true, area_id = 101 }
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
		monsters = { 194005 },
		gadgets = { 194001, 194002, 194003, 194004, 194006 },
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