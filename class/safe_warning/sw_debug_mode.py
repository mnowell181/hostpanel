#!/usr/bin/python
#coding: utf-8


# -------------------------------------------------------------------
# 检测是否开debug模式
# -------------------------------------------------------------------


import os,sys,re,public

_title = '开发者模式检测'
_version = 1.0                              # 版本
_ps = "检测是否开启面板开发者模式"              # 描述
_level = 3                                  # 风险级别： 1.提示(低)  2.警告(中)  3.危险(高)
_date = '2020-08-05'                        # 最后更新时间
_ignore = os.path.exists("data/warning/ignore/sw_debug_mode.pl")
_tips = [
    "在【设置】页面中关闭【开发者模式】功能",
    "注意：开发者模式仅适用于面板插件或API开发时才使用，请勿在生产环境中使用"
    ]

_help = ''


def check_run():
    '''
        @name 开始检测
        @author hwliang<2020-08-05>
        @return tuple (status<bool>,msg<string>)
    '''
    if os.path.exists('/www/server/panel/data/debug.pl'):
        return False,'当前已开启【开发者模式】，存在数据通信、信息泄露等风险'
    return True,'无风险'
