---
layout: post
title: 关于对太阳进行10.7cm射电强度成像的尝试
date: 2022-07-17 T0:00:00 +00:00
categories: posts
---

{% include JavaScripts.html %}

&emsp;&emsp; 笔者基于上次发布的设备库, 使用并行计算技术重新编写了从Android设备获取方位角和与GNU Octave通信以进行数据处理的子程序, 另外新增了一些辅助控制的SHELL脚本, 还修正了部分数学物理模型和算法. 今天晚些时候, 笔者在海边对天空中的10.7cm波段射电强度进行了成像. 结果中可以相对明显地找到太阳(10.7cm射电源)的位置. 目前该项目已经开放源代码, 在Dependency文件指明的环境下初步经过稳定性测试, 另技术文档可能还未编写完成.  
![对太阳进行10.7cm射电强度成像的结果](/include/Blog/20220717001.png){:class="img-responsive"}  
&emsp;&emsp; 该程序使用BSD 3-Clause协议开放源代码, 读者可以直接从[笔者的Git仓库](https://github.com/Umaru-Xi/PlutoRadioScope "笔者的Git仓库链接")获取源代码.  

&emsp;&emsp;  
<p align="right">UMRAY</p>
