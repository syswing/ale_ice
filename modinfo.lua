name = "阿乐冰箱"
description = "调整冰箱腐烂速度,背包增加冰箱功能，盐盒保鲜,骨灰盒保鲜，鸟笼无需喂养，茶几保鲜"
author = "ale"
version = "1.3.7"

icon = "modicon.tex"
icon_atlas = "modicon.xml"

api_version = 10

dst_compatible = true

all_clients_require_mod = true

client_only_mod = false

server_filter_tags = {icebox, backpack}

priority = -1

forumthread = ""

configuration_options = {
    {
        name = "icebox_freeze",
        label = "开启后物品的腐烂速度",
        options = {
            {description = "正常腐烂", data = "0.5"},
            {description = "缓慢腐烂", data = "0.3"},
            {description = "保鲜", data = "0"},
            {description = "反鲜", data = "-5"}
        },
        default = "0.5"
    },
    {
        name = "krampus_sack_ice",
        label = "小偷包保鲜",
        options = {
            {description = "开启", data = true, hover = "开启保鲜模式"},
            {description = "关闭", data = false}
        },
        default = false
    },
    {
        name = "backpack_ice",
        label = "背包保鲜",
        options = {
            {description = "开启", data = true, hover = "开启保鲜模式"},
            {description = "关闭", data = false}
        },
        default = false
    },
    {
        name = "piggyback_ice",
        label = "小猪包保鲜",
        options = {
            {description = "开启", data = true, hover = "开启保鲜模式"},
            {description = "关闭", data = false}
        },
        default = false
    },
    {
        name = "saltlicker",
        label = "盐盒，单独设置保鲜",
        options = {
            {description = "正常腐烂", data = 0.25},
            {description = "保鲜", data = 0},
            {description = "反鲜", data = -5}
        },
        default = -5
    },
    {
        name = "mushroom_frige",
        label = "蘑菇灯保鲜，单独设置保鲜",
        options = {
            {description = "正常腐烂", data = 0.25},
            {description = "保鲜", data = 0}
        },
        default = 0
    },
    {
        name = "cage_frige",
        label = "骨灰盒保鲜",
        options = {
            {description = "开启", data = true, hover = "开启保鲜模式"},
            {description = "关闭", data = false}
        },
        default = true
    },
    {
        name = "cook_pot",
        label = "锅上的食物不腐烂",
        options = {
            {description = "开启", data = true, hover = "锅上的食物不腐烂"},
            {description = "关闭", data = false}
        },
        default = true
    },
    {
        name = "bird_cage",
        label = "设置鸟笼无需喂养",
        options = {
            {description = "开启", data = true, hover = "鸟笼无需喂养"},
            {description = "关闭", data = false, hover = "关闭"}
        },
        default = true
    },
    {
        name = "endtable",
        label = "茶几上的花不坏",
        options = {
            {description = "开启", data = true, hover = "10000天不坏"},
            {description = "关闭", data = false, hover = "默认设置"}
        },
        default = true
    }
}
