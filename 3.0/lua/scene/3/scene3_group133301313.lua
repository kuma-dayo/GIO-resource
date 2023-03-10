-- 基础信息
local base_info = {
	group_id = 133301313
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
	{ config_id = 313001, gadget_id = 70310198, pos = { x = -872.535, y = 220.163, z = 3196.956 }, rot = { x = 3.682, y = 105.967, z = 11.484 }, level = 30, area_id = 23 },
	{ config_id = 313002, gadget_id = 70330218, pos = { x = -858.270, y = 218.353, z = 3225.470 }, rot = { x = 346.121, y = 173.339, z = 349.226 }, level = 30, area_id = 23 },
	{ config_id = 313003, gadget_id = 70330218, pos = { x = -858.383, y = 219.441, z = 3229.322 }, rot = { x = 358.564, y = 355.652, z = 317.137 }, level = 30, area_id = 23 },
	{ config_id = 313004, gadget_id = 70310198, pos = { x = -844.611, y = 216.549, z = 3249.061 }, rot = { x = 7.526, y = 55.146, z = 358.040 }, level = 30, area_id = 23 }
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
		gadgets = { 313001, 313002, 313003, 313004 },
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