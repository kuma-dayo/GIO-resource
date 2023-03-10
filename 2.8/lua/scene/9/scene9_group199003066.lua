-- 基础信息
local base_info = {
	group_id = 199003066
}

-- DEFS_MISCS
local        defs = {

        --连线形态
        patterns = 
        {
                --形态1
                [1] = 
                {
                       	[66001] = 66002,
                        	[66002] = 66003,
		[66003] = 0,
                                [66004] = 66002,
                                [66005] = 66004,
                                [66006] = 66004,
                               [66007] = 66004,
                               [66008] = 66004,
                },
                --形态2
                [2] = 
                {
                       	[35001] = 35003,
                        	[35002] = 35004,
		[35003] = 35004,
                                [35004] = 35006,
                                [35005] = 35001,
                                [35006] = 35001,
                },
        }

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
	[66001] = { config_id = 66001, gadget_id = 70220116, pos = { x = -740.257, y = 305.730, z = -41.875 }, rot = { x = 90.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	[66010] = { config_id = 66010, gadget_id = 70220114, pos = { x = -747.266, y = 356.138, z = -46.147 }, rot = { x = 0.001, y = 310.129, z = 174.464 }, level = 20, area_id = 403 }
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
		gadgets = { 66001, 66010 },
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

require "V2_8/ConstellationPattern"