---
layout: post
title: 电脑有什么用(4_从GNU Octave开始到SuperTux2体验计算机游戏)
date: 2021-08-26 T10:00:00 +08:00
categories: posts
---

{% include JavaScripts.html %}

&emsp;&emsp;"电脑有什么用？"，为了回答这个问题笔者尝试探索出更多计算机在生活中能起作用的使用场景。读者或许会对今天的标题感到困惑：计算机不是用来计算的吗，为什么可以玩游戏呢？

&emsp;&emsp;为了快速回答这个问题，作者尝试在GNU Octave上编写了下面的程序。读者如果忘了GNU Octave是什么的话可以尝试回到本系列第一节进行回忆。

&emsp;&emsp;首先笔者给出了一个临时编写的翘翘板"游戏"代码。该程序直接使用Octave的计时函数，并且没有真的实时获取支点坐标的输入，因此笔者并不建议读者真的运行这个存在很多不稳定性的所谓"游戏"，其运行效果如下。

&emsp;&emsp;它只是一个"计算机游戏"与"计算"之间关系的演示用例，读者并不需要仔细了解其中的细节，请把时间节省在今天的主题上。

![Octave翘翘板](/include/Blog/20210826001.gif){:class="img-responsive"}  

```matlab
    clc,clear;      %清除之前的计算数据；  
    f = figure;     %准备一张空画板；  
    points_x=[-10,0,10];    %左端点，支点和右端点等三个点的横坐标；  
    points_y=[0,0,0];       %三个点的纵坐标；  
    m1=10;                  %左端点质量；  
    m2=7.5;                 %右端点的质量；  
    g=0.98;                 %重力加速度，为了简化游戏难度而缩小的值；  
    theta=0;                %翘翘板倾角；  
    omega=0;                %翘翘板的角速度，方向为逆钟向；  
    input_slider=uicontrol (f, "style", "slider", "position", [110, 20, 360, 20]);     %准备滑块界面；  
    set(input_slider,"value", 0.5);     %将滑块放在中心；  
    tic;                    %启动计时器；  
    while 1                 %循环执行游戏步骤；  
        plot(points_x,points_y,'o-o');      %绘制翘翘板；  
        axis([points_x(2)-12,points_x(2)+12,-12,12]);       %设置图像的坐标轴，以显示相对完整的翘翘板；  
        r1=sqrt((points_x(1)-points_x(2))^2+(points_y(1)-points_y(2))^2);                   %计算左端杠杆长度；  
        r2=sqrt((points_x(3)-points_x(2))^2+(points_y(3)-points_y(2))^2);                   %右端杠杆；  
        points_x(1)=points_x(2)-r1*cos(theta);  %计算左端横坐标；
        points_x(3)=points_x(2)+r2*cos(theta);  %右端；  
        points_y(1)=points_y(2)-r1*sin(theta);  %计算左端纵坐标；  
        points_y(3)=points_y(2)+r2*sin(theta);  %右端；  
        domega=(m1*r1-m2*r2)/(m1*r1*r1+m2*r2*r2)*g; %计算角速度增量；  
        omega=omega+domega;     %计算角速度；  
        dt=toc;                 %获取一次计算后计时器的时间；  
        tic;                    %重新开始计时；  
        dtheta=omega*dt;        %利用两次计时器的间隔，对角速度积分，获得角度增量；  
        theta=theta+dtheta;     %更新角度；  
        points_x(2)=(get(input_slider).value-0.5)/0.5*10;   %获取滑块位置，即支点位置；  
        pause(0.01);            %暂停10毫秒，给绘图留下时间；  
    end
```

&emsp;&emsp;感兴趣的读者可以发现该程序是非常简单的一个基于角动量守恒定律的数值积分器。其不稳定主要来源于离散积分的时隙不可控(往往过长)以及支点位置更新不及时。当然，对于一个用例而言这些都不是很重要。

&emsp;&emsp;对于读者而言，从这个简单的用例可以看出：计算机游戏实际上是一系列计算的集合，显示器上的图形也只是计算结果的某种投射。

&emsp;&emsp;缓解了心中的疑惑之后，让我们步入今天的正题：体验计算机游戏。笔者选择了一款非常时髦的自由且开源的横板闯关游戏"SuperTux2"来分享，读者可以从它的[项目主页](https://www.supertux.org "SuperTux项目主页")获取安装文件副本。

![SuperTux主界面](/include/Blog/20210826002.png){:class="img-responsive"}  

&emsp;&emsp;虽然说计算机游戏的本质是计算，但其表现形式依然是游戏。为了让玩家融入游戏场景，SuperTux2设定了一个有趣的故事背景：Tux(Linux内核的吉祥物企鹅)的好友被邪恶的魔王绑架，Tux将要历经千难万险去解救她。

![欢迎来到南极](/include/Blog/20210826003.png){:class="img-responsive"}  

&emsp;&emsp;读者可以通过设置菜单了解到如何操作Tux，在开始故事模式并经过简单的故事背景介绍后，读者就可以通过自己的键盘控制Tux踏上旅途了。在游戏过程中也会出现一些操作教学面板，有助于读者快速了解游戏中的细节操作。

![操作教学面板](/include/Blog/20210826004.png){:class="img-responsive"}  

&emsp;&emsp;放轻松享受解救同伴(或者通关)的快乐吧。

![通关用例](/include/Blog/20210826005.png){:class="img-responsive"}  

&emsp;&emsp;值得注意的是，计算机游戏丰富多彩，操作方式五花八门。作为期待在计算机游戏中获得乐趣的读者，应该逐渐放开手脚然后大胆尝试独立操作。

> 需要注意：适度享受游戏有助于延缓衰老，但沉溺于计算机游戏则有害身心健康。当读者在虚拟世界中畅快淋漓时，请不要忘记计算机正在进行计算，尝试思考其计算的细节将有助于读者更多了解计算机。

<p align="right">UMRAY</p>
<p align="right">2021.08.26</p>
