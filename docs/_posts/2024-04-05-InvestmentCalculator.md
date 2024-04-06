---
layout: post
title: 投资计算器(私用)
date: 2024-04-05 T0:00:00 +08:00
categories: posts
---

{% include JavaScripts.html %}

<script>
    function investmentCalculatorA(){
        setInterval(
            function() {
                var tradeMethod;
                for(var i = 0; i < document.getElementsByName("ICAtradeMethod").length; i++){
                    if(document.getElementsByName("ICAtradeMethod")[i].checked){
                        tradeMethod = document.getElementsByName("ICAtradeMethod")[i].value;
                    }
                }
                tradeMethod = (tradeMethod == "make"? 1 : 0);
                var makeRate = document.getElementById("ICAmakeRate").value / 100.0;
                var takeRate = document.getElementById("ICAtakeRate").value / 100.0;
                var buyPrice = document.getElementById("ICAbuyPrice").value;

                var rate = (tradeMethod == 1? makeRate : takeRate);
                var sellLimit = (rate + 1) / (1 - rate) * buyPrice;
                document.getElementById("ICAsellLimit").value = sellLimit.toFixed(2);

                var sellPrice = document.getElementById("ICAsellPrice").value;
                var profitRate = (sellPrice - (sellPrice * rate) - (buyPrice * rate) - buyPrice) / buyPrice * 100.00;
                document.getElementById("ICAprofitRate").value = profitRate.toFixed(2) + "%";

        }, 100);
    }
    investmentCalculatorA();
</script>

<table border="1" align="center" cellpadding="0">
    <thead>
        <tr>
            <th>投资收益计算器</th>
        </tr>
    </thead>
    <tbody>
    <tr align="center">
        <td>
            交易方式:
            <input type="radio" id="ICAmakeRadio" name="ICAtradeMethod" value="make" checked />
            <label for="makeRadio">限价</label>
            <input type="radio" id="ICAtakeRadio" name="ICAtradeMethod" value="take" />
            <label for="takeRadio">市价</label>
            <br>
            费率: 限价
            <input id="ICAmakeRate" type="number" value="0.25" style="width: 6ch">% 
            市价: 
            <input id="ICAtakeRate" type="number" value="0.40" style="width: 6ch">%
            <br>
            购入价格:
            <input id="ICAbuyPrice" type="number" value="" style="width: 22ch">
            <br>
            卖出下限:
            <input id="ICAsellLimit" type="number" disabled="yes" value="" style="width: 22ch">
            <br>
            卖出价格:
            <input id="ICAsellPrice" type="number" value="" style="width: 22ch">
            <br>
            交易收益:
            <input id="ICAprofitRate" type="number" disabled="yes" value="" style="width: 22ch">
        </td>
    </tr>
    </tbody>
</table>


<p align="right">N.X.Y.</p>  
