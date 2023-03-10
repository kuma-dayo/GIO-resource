-- 任务配置数据开始-----------------------------

main_id = 19048

sub_ids = 
{
	1904801,
}
-- 任务配置数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 父任务执行项数据开始-----------------------------
finish_action = 
{
	CLIENT = { },
	SERVER = { },
}

fail_action = 
{
	CLIENT = { },
	SERVER = { },
}

cancel_action = 
{
	CLIENT = { },
	SERVER = { },
}
-- 父任务执行项数据结束-----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Actor模块数据开始--------------------------------
-- 空
-- Actor模块数据结束--------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- 文本模块数据开始---------------------------------
-- 空
-- 文本模块数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- 路点模块数据开始---------------------------------
-- 空
-- 路点模块数据结束---------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data = 
{
	["1904801"] = 
	{
		npcs = 
		{
			{
				id = 2085,
				alias = "Npc2085",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_N2085",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 2443,
				alias = "Npc2443",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_N2443",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
			{
				id = 2062,
				alias = "Npc2062",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_N2062",
				scene_id = 3,
				room_id = 0,
				data_index = 3,
			},
			{
				id = 2011,
				alias = "Npc2011",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_N2011",
				scene_id = 3,
				room_id = 0,
				data_index = 4,
			},
			{
				id = 2010,
				alias = "Npc2010",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "Q1903701_N2011",
				scene_id = 3,
				room_id = 0,
				data_index = 5,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
