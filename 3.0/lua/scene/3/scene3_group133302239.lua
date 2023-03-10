-- 基础信息
local base_info = {
	group_id = 133302239
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
	{ config_id = 239001, gadget_id = 70500000, pos = { x = -864.132, y = 167.654, z = 2121.415 }, rot = { x = 0.684, y = 317.193, z = 14.886 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 239002, gadget_id = 70500000, pos = { x = -876.894, y = 163.439, z = 2149.161 }, rot = { x = 0.000, y = 49.169, z = 0.000 }, level = 27, point_type = 2045, area_id = 24 },
	{ config_id = 239003, gadget_id = 70540037, pos = { x = -817.113, y = 162.045, z = 2312.513 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 239004, gadget_id = 70500000, pos = { x = -816.727, y = 162.421, z = 2312.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 239003, area_id = 24 },
	{ config_id = 239005, gadget_id = 70500000, pos = { x = -817.282, y = 162.766, z = 2312.827 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 239003, area_id = 24 },
	{ config_id = 239006, gadget_id = 70540037, pos = { x = -841.904, y = 160.503, z = 2253.943 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 239007, gadget_id = 70500000, pos = { x = -841.517, y = 160.878, z = 2253.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2049, owner = 239006, area_id = 24 },
	{ config_id = 239008, gadget_id = 70500000, pos = { x = -842.073, y = 161.224, z = 2254.257 }, rot = { x = 0.000, y = 270.022, z = 0.000 }, level = 27, point_type = 2049, owner = 239006, area_id = 24 },
	{ config_id = 239010, gadget_id = 70500000, pos = { x = -871.251, y = 161.011, z = 2221.856 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 239011, gadget_id = 70500000, pos = { x = -865.132, y = 159.410, z = 2235.425 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 239012, gadget_id = 70500000, pos = { x = -852.116, y = 159.320, z = 2222.099 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 2002, area_id = 24 },
	{ config_id = 239013, gadget_id = 70290003, pos = { x = -818.795, y = 221.350, z = 2482.498 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 239014, gadget_id = 70500000, pos = { x = -818.795, y = 221.453, z = 2482.407 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 239013, area_id = 24 },
	{ config_id = 239015, gadget_id = 70500000, pos = { x = -818.795, y = 221.453, z = 2482.599 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 239013, area_id = 24 },
	{ config_id = 239016, gadget_id = 70290003, pos = { x = -816.879, y = 206.633, z = 2452.311 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	{ config_id = 239017, gadget_id = 70500000, pos = { x = -816.879, y = 206.736, z = 2452.220 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 239016, area_id = 24 },
	{ config_id = 239018, gadget_id = 70500000, pos = { x = -816.879, y = 206.736, z = 2452.412 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, point_type = 3003, owner = 239016, area_id = 24 }
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
		gadgets = { 239001, 239002, 239003, 239004, 239005, 239006, 239007, 239008, 239010, 239011, 239012, 239013, 239014, 239015, 239016, 239017, 239018 },
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