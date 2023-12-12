---
layout: post
title: CAdfīnitās(Adfīnitās的C实现)
date: 2023-12-12 T10:00:00 +08:00
categories: posts
---

{% include JavaScripts.html %}

&emsp;&emsp;更新: 添加了仿真系统状态保存和读取功能. 分离了个人的常用数学结构库. 修复了MPI中的嵌套等待. 自2023年12月12日后的更新请直接访问[这里](https://github.com/Umaru-Xi/CAdfinitas/ "Git仓库")使用Git获取最新更新.  

&emsp;&emsp;更新: 添加了MPI支持, 分布式计算的支持已经恢复. 点击[这里](https://github.com/Umaru-Xi/CAdfinitas/releases/download/2023-12-02/CAdfinitas.tar.xz "最新源代码")获取2023年12月02日更新的源代码.  

&emsp;&emsp;CAdfīnitās是使用C语言编写(的目前是无碰撞的引力)N体仿真程序, 如需使用分布式计算需要MPI, 是[Adfīnitās](/posts/2023/12/01/Adfinitas.html "Adfīnitās页面")([Git仓库](https://github.com/Umaru-Xi/Adfinitas "Git仓库"))的新版本. CAdfīnitās修正了内存消耗的问题, 并显著提升了计算速度. 项目采用BSD-3-Clause协议开放源代码, 点击[这里](https://github.com/Umaru-Xi/CAdfinitas/releases/download/2023-12-01/CAdfinitas.tar.xz "获取源码")获取源代码, 或[这里](https://github.com/Umaru-Xi/CAdfinitas/ "Git仓库")访问项目的Git仓库.  

&emsp;&emsp;所有的积分器均为保持Symplectic结构的积分器, 但是Verlet积分器存在一些已知的问题(等待被修复).  

&emsp;&emsp;本程序目前不仿真碰撞(目前关注Hamilton系统的Symplectic结构). 因此在示例3.2中, 系统的Hamilton并不被保持.  

&emsp;&emsp;核心程序依赖: [libXi](https://github.com/Umaru-Xi/LibXi "LibXi的Git仓库"), openMPI(或其他MPI实现, 仅并行计算时);  
&emsp;&emsp;示例程序依赖: GNU Plot, make, cc;  

&emsp;&emsp;几个示例: 这些示例与Julia版本相同.  
&emsp;&emsp; 1. 太阳系仿真(木星及内侧轨道);  
&emsp;&emsp; &emsp;&emsp; a. 太阳系轨道  
&emsp;&emsp; &emsp;&emsp; ![太阳系轨道](/include/CAdfinitas/CAdfinitasExample1.1.gif){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; b. 系统的Hamilton;  
&emsp;&emsp; &emsp;&emsp; ![系统Hamilton](/include/CAdfinitas/CAdfinitasExample1.2.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; c. 太阳及水星的视向速度;  
&emsp;&emsp; &emsp;&emsp; ![太阳及水星的视向速度](/include/CAdfinitas/CAdfinitasExample1.3.png){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; 2. 一个太阳-地球-月球系统, 但月球具有z轴上的初速度;  
&emsp;&emsp; &emsp;&emsp; a. 轨道;  
&emsp;&emsp; &emsp;&emsp; ![地日月系统轨道](/include/CAdfinitas/CAdfinitasExample2.1.gif){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; 3. 星系的N体仿真;  
&emsp;&emsp; &emsp;&emsp; a. 1000体仿真;  
&emsp;&emsp; &emsp;&emsp; ![1000体仿真](/include/CAdfinitas/CAdfinitasExample3.1.gif){:class="img-responsive"}  
&emsp;&emsp; &emsp;&emsp; b. 系统的Hamilton;  
&emsp;&emsp; &emsp;&emsp; ![系统的Hamilton](/include/CAdfinitas/CAdfinitasExample3.2.png){:class="img-responsive"}  

&emsp;&emsp;  
<p align="right">UMRAY</p>
<p align="right">2023.12.01</p>
