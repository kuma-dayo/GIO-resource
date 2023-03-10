-- DEFS_MISCS
local GroupId = 247006010
local point_id_list = {}
local MainGroupID = 247006001
local RegionID = 10001

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
}

-- 区域
regions = {
	{ config_id = 10001, shape = RegionShape.CUBIC, size = { x = 40.000, y = 25.000, z = 40.000 }, pos = { x = -160.030, y = 0.050, z = 160.040 } }
}

-- 触发器
triggers = {
	{ config_id = 1010001, name = "ENTER_REGION_10001", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "" }
}

-- 点位
points = {
	{ config_id = 10002, pos = { x = -173.405, y = 0.039, z = 159.833 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10003, pos = { x = -172.668, y = 0.039, z = 156.846 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10004, pos = { x = -172.857, y = 0.039, z = 163.067 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10005, pos = { x = -171.414, y = 0.039, z = 152.949 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10006, pos = { x = -171.132, y = 0.039, z = 167.025 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10007, pos = { x = -168.886, y = 0.039, z = 150.531 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10008, pos = { x = -169.136, y = 0.039, z = 170.284 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 2 },
	{ config_id = 10009, pos = { x = -166.342, y = 0.039, z = 149.749 }, rot = { x = 0.000, y = 359.327, z = 0.000 }, tag = 2 },
	{ config_id = 10010, pos = { x = -166.236, y = 0.039, z = 170.432 }, rot = { x = 0.000, y = 179.327, z = 0.000 }, tag = 2 },
	{ config_id = 10011, pos = { x = -163.247, y = 0.039, z = 149.735 }, rot = { x = 0.000, y = 359.327, z = 0.000 }, tag = 2 },
	{ config_id = 10012, pos = { x = -172.093, y = 0.039, z = 159.918 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 4 },
	{ config_id = 10013, pos = { x = -170.070, y = 0.039, z = 155.045 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 4 },
	{ config_id = 10014, pos = { x = -170.360, y = 0.039, z = 164.993 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 4 },
	{ config_id = 10015, pos = { x = -166.933, y = 0.039, z = 151.682 }, rot = { x = 0.000, y = 29.327, z = 0.000 }, tag = 4 },
	{ config_id = 10016, pos = { x = -166.118, y = 0.039, z = 169.229 }, rot = { x = 0.000, y = 179.327, z = 0.000 }, tag = 4 },
	{ config_id = 10017, pos = { x = -161.282, y = 0.039, z = 152.197 }, rot = { x = 0.000, y = 349.327, z = 0.000 }, tag = 4 },
	{ config_id = 10018, pos = { x = -160.196, y = 0.039, z = 168.710 }, rot = { x = 0.000, y = 179.327, z = 0.000 }, tag = 4 },
	{ config_id = 10019, pos = { x = -157.506, y = 0.039, z = 155.250 }, rot = { x = 0.000, y = 329.327, z = 0.000 }, tag = 4 },
	{ config_id = 10020, pos = { x = -156.815, y = 0.039, z = 165.330 }, rot = { x = 0.000, y = 209.327, z = 0.000 }, tag = 4 },
	{ config_id = 10021, pos = { x = -154.699, y = 0.039, z = 160.114 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 4 },
	{ config_id = 10022, pos = { x = -172.317, y = 0.039, z = 149.899 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10023, pos = { x = -172.553, y = 0.039, z = 169.965 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10024, pos = { x = -153.293, y = 0.039, z = 150.123 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10025, pos = { x = -153.529, y = 0.039, z = 170.188 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10026, pos = { x = -172.338, y = 0.039, z = 151.633 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10027, pos = { x = -172.574, y = 0.039, z = 171.698 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10028, pos = { x = -153.313, y = 0.039, z = 151.857 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10029, pos = { x = -153.549, y = 0.039, z = 171.922 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10030, pos = { x = -172.286, y = 0.039, z = 147.218 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10031, pos = { x = -172.522, y = 0.039, z = 167.283 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 8 },
	{ config_id = 10032, pos = { x = -153.262, y = 0.039, z = 147.441 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10033, pos = { x = -153.497, y = 0.039, z = 167.506 }, rot = { x = 0.000, y = 269.327, z = 0.000 }, tag = 8 },
	{ config_id = 10034, pos = { x = -166.431, y = 0.039, z = 158.789 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10035, pos = { x = -166.457, y = 0.039, z = 161.021 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10036, pos = { x = -166.408, y = 0.039, z = 156.876 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10037, pos = { x = -166.481, y = 0.039, z = 163.067 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10038, pos = { x = -166.386, y = 0.039, z = 155.004 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10039, pos = { x = -166.503, y = 0.039, z = 164.905 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10040, pos = { x = -164.036, y = 0.039, z = 156.787 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10041, pos = { x = -164.107, y = 0.039, z = 162.833 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10042, pos = { x = -164.086, y = 0.039, z = 161.049 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10043, pos = { x = -164.060, y = 0.039, z = 158.817 }, rot = { x = 0.000, y = 89.327, z = 0.000 }, tag = 16 },
	{ config_id = 10044, pos = { x = -167.165, y = 0.070, z = 159.967 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, tag = 32 }
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
		gadgets = { },
		regions = { 10001 },
		triggers = { "ENTER_REGION_10001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

require "V2_2/RogueDungeon_Require"