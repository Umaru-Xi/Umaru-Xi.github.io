---
layout: post
title: 关于编写了ADALM-Pluto硬件库
date: 2022-07-11 T0:00:00 +00:00
categories: posts
---

{% include JavaScripts.html %}

&emsp;&emsp; Analog Devices公司设计的ADALM-Pluto主动学习模块是一块在性能上值得称赞的产品. 但是其官方提供的资料较少且重点围绕Mathworks公司的MATLAB和Simulink程序展开, 对于没有购买Mathworks公司程序的用户来讲, GNURadio几乎是官方能够提供相对完整文档的唯一选择.  
&emsp;&emsp; 笔者注意到, 除了Debian家族少数几款Linux发行版外, GNURadio及gr-iio模块很难在其他Linux发行版(如: openSUSE Leap 15.4)上同时配置完好. 为了方便使用, 并提高代码的可移植性, 笔者使用C++编写了这份硬件库.  
&emsp;&emsp; 该库不依赖特定平台, 能够提供对ADALM-Pluto中的大部分参数的访问功能, 另外笔者也提供了基于Qt6.0编写的图形界面示例程序(运行效果如下图).  
![Pluto硬件库运行时的控制台信息](/include/Blog/20220711001.png){:class="img-responsive"}  
![Pluto硬件库收发测试](/include/Blog/20220711002.png){:class="img-responsive"}  
&emsp;&emsp; 该硬件库使用BSD 3-Clause协议开放源代码, 读者可以直接从[笔者的Git仓库](https://github.com/Umaru-Xi/PlutoSDRDevice "笔者的Git仓库链接") 获取源代码.  

&emsp;&emsp;  
<p align="right">UMRAY</p>
