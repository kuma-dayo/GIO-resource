-- 基础信息
local base_info = {
	group_id = 199001185
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 185001, monster_id = 23010601, pos = { x = 737.386, y = 172.667, z = 311.297 }, rot = { x = 0.000, y = 267.293, z = 0.000 }, level = 20, drop_tag = "先遣队", pose_id = 9002, area_id = 402 },
	{ config_id = 185002, monster_id = 21010101, pos = { x = 774.070, y = 193.790, z = 313.666 }, rot = { x = 0.000, y = 357.453, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9010, area_id = 402 },
	{ config_id = 185003, monster_id = 23010601, pos = { x = 761.184, y = 192.604, z = 279.246 }, rot = { x = 0.000, y = 191.227, z = 0.000 }, level = 20, drop_tag = "先遣队", pose_id = 9002, area_id = 402 },
	{ config_id = 185004, monster_id = 21010401, pos = { x = 771.008, y = 193.991, z = 313.245 }, rot = { x = 0.000, y = 48.601, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 185005, monster_id = 21010101, pos = { x = 757.820, y = 176.805, z = 308.004 }, rot = { x = 0.000, y = 333.902, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 402 },
	{ config_id = 185006, monster_id = 23010601, pos = { x = 775.602, y = 192.366, z = 328.165 }, rot = { x = 0.000, y = 6.419, z = 0.000 }, level = 20, drop_tag = "先遣队", disableWander = true, pose_id = 9012, area_id = 402 }
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
		monsters = { 185001, 185002, 185003, 185004, 185005, 185006 },
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