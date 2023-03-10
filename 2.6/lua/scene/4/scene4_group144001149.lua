-- 基础信息
local base_info = {
	group_id = 144001149
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
	-- 按键1
	{ config_id = 149002, gadget_id = 70230042, pos = { x = 320.116, y = 122.348, z = 308.395 }, rot = { x = 0.000, y = 280.085, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键2
	{ config_id = 149006, gadget_id = 70230042, pos = { x = 323.017, y = 122.348, z = 312.631 }, rot = { x = 0.000, y = 262.969, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键2
	{ config_id = 149010, gadget_id = 70230042, pos = { x = 322.991, y = 121.922, z = 312.528 }, rot = { x = 0.000, y = 262.969, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键3
	{ config_id = 149013, gadget_id = 70230042, pos = { x = 327.231, y = 122.594, z = 300.910 }, rot = { x = 0.000, y = 291.398, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键3
	{ config_id = 149017, gadget_id = 70230042, pos = { x = 327.205, y = 122.167, z = 300.843 }, rot = { x = 0.000, y = 291.398, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键3
	{ config_id = 149021, gadget_id = 70230042, pos = { x = 327.243, y = 121.746, z = 300.942 }, rot = { x = 0.000, y = 291.398, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键4
	{ config_id = 149026, gadget_id = 70230042, pos = { x = 328.560, y = 122.705, z = 314.469 }, rot = { x = 0.000, y = 285.045, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键4
	{ config_id = 149030, gadget_id = 70230042, pos = { x = 328.464, y = 122.279, z = 314.146 }, rot = { x = 0.000, y = 285.045, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键4
	{ config_id = 149034, gadget_id = 70230042, pos = { x = 328.534, y = 121.857, z = 314.391 }, rot = { x = 0.000, y = 285.045, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键4
	{ config_id = 149039, gadget_id = 70230042, pos = { x = 328.455, y = 121.459, z = 314.077 }, rot = { x = 0.000, y = 285.045, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键5
	{ config_id = 149045, gadget_id = 70230042, pos = { x = 322.562, y = 122.780, z = 302.918 }, rot = { x = 0.000, y = 318.131, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键5
	{ config_id = 149047, gadget_id = 70230042, pos = { x = 322.028, y = 122.351, z = 302.869 }, rot = { x = 0.000, y = 270.316, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键5
	{ config_id = 149051, gadget_id = 70230042, pos = { x = 322.025, y = 121.929, z = 302.456 }, rot = { x = 0.000, y = 270.316, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键5
	{ config_id = 149056, gadget_id = 70230042, pos = { x = 322.025, y = 121.531, z = 302.364 }, rot = { x = 0.000, y = 270.316, z = 0.000 }, level = 1, area_id = 102 },
	-- 按键5
	{ config_id = 149061, gadget_id = 70230042, pos = { x = 322.106, y = 121.065, z = 302.719 }, rot = { x = 0.000, y = 270.511, z = 0.000 }, level = 1, area_id = 102 }
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
		monsters = { },
		gadgets = { 149002, 149006, 149010, 149013, 149017, 149021, 149026, 149030, 149034, 149039, 149045, 149047, 149051, 149056, 149061 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
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