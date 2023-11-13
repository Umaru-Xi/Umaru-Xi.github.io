---
layout: post
title: Adfīnitās(为分布式计算机设计的N-Body仿真程序)
date: 2023-11-04 T10:00:00 +08:00
categories: posts
---

{% include JavaScripts.html %}

&emsp;&emsp;更新: 限制了所有的变量类型, 为了避免运行时类型自动推定, 以提高运行速度. 点击[这里](https://github.com/Umaru-Xi/Adfinitas/releases/download/2023-11-13/Adfinitas.tar.xz "最新源代码")获取2023年11月13日更新的源代码.  

&emsp;&emsp;项目采用BSD-3-Clause协议开放源代码, 点击[这里](https://github.com/Umaru-Xi/Adfinitas/releases/download/2023-11-04/Adfinitas.tar.xz "源代码")获取2023年11月04日的源码. 或者点击[这里](https://github.com/Umaru-Xi/Adfinitas "Git仓库")查看Git仓库最新进展.  

&emsp;&emsp;Adfīnitās使用Julia语言编写, 支持并行计算及分布式计算. 一个可以轻松从多核处理器迁移到大型机超级计算机网络的设计.  
&emsp;&emsp;核心程序依赖: Distributed, DistributedArrays, ProgressMeter;  
&emsp;&emsp;示例程序依赖: Jupyter Notebook, PyPlot, PyCall, 可能还需要针对性的Python环境配置;  

&emsp;&emsp;几个示例:  
&emsp;&emsp; 1. 太阳系仿真(木星及内侧轨道);  
&emsp;&emsp; &emsp;&emsp; a. 太阳系轨道3D  
&emsp;&emsp; &emsp;&emsp; ![太阳系轨道3D](/include/Adfinitas/position.svg.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; b. 轨道动画;  
&emsp;&emsp; &emsp;&emsp; ![太阳系轨道动画](/include/Adfinitas/animePosition.gif){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; c. 太阳及水星的视向速度;  
&emsp;&emsp; &emsp;&emsp; ![太阳的视向速度](/include/Adfinitas/SunRadialVelocity.svg.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; ![水星的视向速度](/include/Adfinitas/MercuryRadialVelocity.svg.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; 2. 一个太阳-地球-月球系统, 但月球具有z轴上的初速度;  
&emsp;&emsp; &emsp;&emsp; a. 3D轨道;  
&emsp;&emsp; &emsp;&emsp; ![地日月系统轨道3D](/include/Adfinitas/MoonPosition.svg.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; 3. 星系的N体仿真;  
&emsp;&emsp; &emsp;&emsp; a. 100体的2D仿真;  
&emsp;&emsp; &emsp;&emsp; ![100体2D仿真](/include/Adfinitas/anime2DGalaxyPosition.gif){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; b. 1000体的3D仿真;  
&emsp;&emsp; &emsp;&emsp; ![1000体3D仿真](/include/Adfinitas/animeGalaxyPosition.gif){:class="img-responsive"}  

&emsp;&emsp;  
<p align="right">UMRAY</p>
<p align="right">2023.11.04</p>
