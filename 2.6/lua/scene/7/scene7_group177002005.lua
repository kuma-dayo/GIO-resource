-- 基础信息
local base_info = {
	group_id = 177002005
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 5004, monster_id = 24020201, pos = { x = 1324.603, y = 195.145, z = 806.190 }, rot = { x = 0.000, y = 326.407, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 5135, 1007 }, pose_id = 100, area_id = 210 },
	{ config_id = 5006, monster_id = 24020401, pos = { x = 1329.465, y = 195.229, z = 806.899 }, rot = { x = 0.000, y = 322.945, z = 0.000 }, level = 36, drop_tag = "拟生机关", disableWander = true, affix = { 5135, 1007 }, pose_id = 100, area_id = 210 }
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
		{ config_id = 5001, monster_id = 22070101, pos = { x = 1348.148, y = 179.568, z = 832.499 }, rot = { x = 0.000, y = 98.216, z = 0.000 }, level = 36, drop_id = 212000001, affix = { 5135, 1007 }, pose_id = 101, area_id = 210 },
		{ config_id = 5002, monster_id = 22070202, pos = { x = 1330.313, y = 180.987, z = 852.494 }, rot = { x = 0.000, y = 99.484, z = 0.000 }, level = 36, drop_id = 212000001, affix = { 5135, 1007 }, pose_id = 101, area_id = 210 },
		{ config_id = 5003, monster_id = 22070302, pos = { x = 1301.393, y = 180.532, z = 835.843 }, rot = { x = 0.000, y = 57.784, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007 }, pose_id = 101, area_id = 210 },
		{ config_id = 5005, monster_id = 22070302, pos = { x = 1327.747, y = 197.346, z = 797.885 }, rot = { x = 0.000, y = 302.523, z = 0.000 }, level = 36, drop_id = 212000001, disableWander = true, affix = { 5135, 1007 }, pose_id = 101, area_id = 210 }
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
		monsters = { 5004, 5006 },
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