-- 基础信息
local base_info = {
	group_id = 133315196
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
	{ config_id = 196003, gadget_id = 70290536, pos = { x = 519.261, y = 168.000, z = 2490.114 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 196004, gadget_id = 70290536, pos = { x = 528.321, y = 168.000, z = 2480.649 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 196007, gadget_id = 70290536, pos = { x = 529.546, y = 168.000, z = 2500.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
	{ config_id = 196008, gadget_id = 70290536, pos = { x = 537.774, y = 168.000, z = 2489.238 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, state = GadgetState.GearStart, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1196001, name = "QUEST_START_196001", event = EventType.EVENT_QUEST_START, source = "7306629", condition = "", action = "action_EVENT_QUEST_START_196001", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 196002, gadget_id = 70290536, pos = { x = 527.913, y = 168.695, z = 2488.837 }, rot = { x = 23.091, y = 218.320, z = 129.268 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
		{ config_id = 196005, gadget_id = 70290536, pos = { x = 527.913, y = 168.695, z = 2488.837 }, rot = { x = 23.091, y = 218.320, z = 129.268 }, level = 27, state = GadgetState.GearStart, area_id = 20 },
		{ config_id = 196006, gadget_id = 70290536, pos = { x = 527.913, y = 168.695, z = 2488.837 }, rot = { x = 23.091, y = 218.320, z = 129.268 }, level = 27, state = GadgetState.GearStart, area_id = 20 }
	},
	triggers = {
		{ config_id = 1196009, name = "QUEST_FINISH_196009", event = EventType.EVENT_QUEST_FINISH, source = "7306630", condition = "", action = "action_EVENT_QUEST_FINISH_196009", trigger_count = 0 }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 196003, 196004, 196007, 196008 },
		regions = { },
		triggers = { "QUEST_START_196001" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_QUEST_START_196001(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133315196, 2)
	
	return 0
end

require "V3_0/DeathFieldStandard"