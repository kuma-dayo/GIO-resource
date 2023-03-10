-- Trigger变量
local defs = {
	group_ID = 133212071,
	gadget_thunderThelfID = 71001,
	pointarray_ID = 321200010,
	maxPointCount = 6,
	gadget_Reward_1 = 71002,
	pointInfo = {2,3,4,5,6} 
}

-- DEFS_MISCS
function GetNextPath(context)
	local path = {}
	local index = ScriptLib.GetGroupVariableValue(context,"nextRouteIndex")
	local stoppoint = defs.pointInfo[index]
	ScriptLib.PrintLog("stop point : "..stoppoint)
	local currentNodeIndex = ScriptLib.GetGroupVariableValue(context,"currentPathNodeIndex")
	for i=currentNodeIndex + 1,stoppoint do
		table.insert(path,i)
	end
	return path
end


function MovePlatform(context)
	ScriptLib.PrintLog("platform to move")
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "isMoving", 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
		return -1
	end


	ScriptLib.SetPlatformPointArray(context, defs.gadget_thunderThelfID, defs.pointarray_ID, GetNextPath(context), { route_type = 0 })
	ScriptLib.PrintLog("platform to move : start platform")
	return 0
end

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
}

-- 触发器
triggers = {
}

-- 变量
variables = {
	{ name = "isFinished", value = 0, no_refresh = true },
	{ name = "isMoving", value = 0, no_refresh = false },
	{ name = "currentRouteIndex", value = 0, no_refresh = false },
	{ name = "nextRouteIndex", value = 1, no_refresh = false },
	{ name = "isstart", value = 0, no_refresh = false },
	{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 71001, gadget_id = 70350292, pos = { x = -4239.884, y = 201.209, z = -2518.059 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 13 },
		{ config_id = 71002, gadget_id = 70211101, pos = { x = -4120.420, y = 137.646, z = -2431.950 }, rot = { x = 8.488, y = 143.242, z = 4.971 }, level = 26, drop_tag = "解谜低级稻妻", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 13 },
		{ config_id = 71003, gadget_id = 70350292, pos = { x = -4117.196, y = 138.233, z = -2436.088 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 2, start_route = false, persistent = true, is_use_point_array = true, area_id = 13 }
	},
	triggers = {
		{ config_id = 1071004, name = "PLATFORM_REACH_POINT_71004", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_71004", action = "action_EVENT_PLATFORM_REACH_POINT_71004", trigger_count = 0 },
		{ config_id = 1071005, name = "AVATAR_NEAR_PLATFORM_71005", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_71005", action = "action_EVENT_AVATAR_NEAR_PLATFORM_71005", trigger_count = 0 }
	}
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	io_type = 1,
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suite_disk = {
	[1] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ name = "isFinished", value = 0, no_refresh = true },
			{ name = "isMoving", value = 0, no_refresh = false },
			{ name = "currentRouteIndex", value = 0, no_refresh = false },
			{ name = "nextRouteIndex", value = 1, no_refresh = false },
			{ name = "isstart", value = 0, no_refresh = false },
			{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	},
	[2] = {
		gadgets = {
		},
		monsters = {
		},
		regions = { },
		triggers = { },
		npcs = { },
		variables = {
			{ name = "isFinished", value = 1, no_refresh = true },
			{ name = "isMoving", value = 0, no_refresh = false },
			{ name = "currentRouteIndex", value = 0, no_refresh = false },
			{ name = "nextRouteIndex", value = 1, no_refresh = false },
			{ name = "isstart", value = 0, no_refresh = false },
			{ name = "currentPathNodeIndex", value = 0, no_refresh = false }
		}
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================