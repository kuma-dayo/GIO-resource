-- 基础信息
local base_info = {
	group_id = 199004136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 136001, monster_id = 21030301, pos = { x = -309.094, y = 119.864, z = -608.953 }, rot = { x = 0.000, y = 321.360, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 136002, monster_id = 21010401, pos = { x = -310.554, y = 120.234, z = -614.862 }, rot = { x = 0.000, y = 328.789, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 136003, monster_id = 21010401, pos = { x = -278.575, y = 120.294, z = -615.772 }, rot = { x = 0.000, y = 240.146, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9002, area_id = 400 },
	{ config_id = 136005, monster_id = 21030601, pos = { x = -327.759, y = 121.271, z = -593.445 }, rot = { x = 0.000, y = 135.479, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, pose_id = 9012, area_id = 400 },
	{ config_id = 136006, monster_id = 21011001, pos = { x = -328.332, y = 120.002, z = -595.047 }, rot = { x = 0.000, y = 137.437, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9003, area_id = 400 },
	{ config_id = 136007, monster_id = 21011001, pos = { x = -334.565, y = 123.353, z = -597.937 }, rot = { x = 0.000, y = 102.268, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 136004, gadget_id = 70220013, pos = { x = -327.916, y = 119.662, z = -593.565 }, rot = { x = 6.708, y = 39.438, z = 0.950 }, level = 20, area_id = 400 }
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
		monsters = { 136001, 136002, 136003, 136005, 136006, 136007 },
		gadgets = { 136004 },
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