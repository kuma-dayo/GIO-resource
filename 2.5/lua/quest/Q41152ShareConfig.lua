-- 任务配置数据开始-----------------------------

main_id = 41152

sub_ids =
{
	4115204,
	4115201,
	4115202,
	4115203,
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
	SERVER =
	{
		QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM =
		{
			{ "100658", },
		},
	},
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


-- 断线重连生成内容 开始----------------------------
-- 和questdata配的存档点对应
rewind_data =
{
	["4115201"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
	["4115203"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
		},
	},
}
-- 断线重连生成内容 结束----------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- 校验数据 开始----------------------------------
-- 和任务lua中生成NPC/Monster/Gadget/Item等对应
quest_data =
{
	["4115201"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1593,
				alias = "Npc1593",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4115202"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1593,
				alias = "Npc1593",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4115203"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1593,
				alias = "Npc1593",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
	["4115204"] =
	{
		npcs =
		{
			{
				id = 159301,
				alias = "Npc159301",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 1,
			},
			{
				id = 1593,
				alias = "Npc1593",
				script = "Actor/Npc/NpcFSMBehaviour",
				pos = "EQ41152_NPCBorn",
				scene_id = 3,
				room_id = 0,
				data_index = 2,
			},
		},
	},
}
-- 校验数据 结束----------------------------------
-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
