<%--
  Created by IntelliJ IDEA.
  User: 独听北风
  Date: 2018/9/30
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form id="oo" action="">
    <div>

        请输入区域：<select id="aa">
        <option>请选择</option>

        <option ><a href="">朝阳区订单</a></option>
        <option><a href="">海淀区订单</a></option>
        <option ><a href="">丰台区订单</a></option>
        <option ><a href="">西城区订单</a></option>
        <option ><a href="">昌平区订单</a></option>

        <c:forEach items="page" var="ob">
            <th>
                ${ob}
            </th>

        </c:forEach>
    </select>
        <input id="cc" type="button"value="查询" onclick="onto()">
    </div>
    <p> <a href="/good/page"> 返回商品详情首页</a></p>
</form>

<script>

    function onto() {
            //点击查询按钮触发查询事件

            var select=document.getElementById('aa'); //获取下拉框节点

            var form =document.getElementById("oo");
            var index=select.selectedIndex; // 获取选中的下标值

            window.location.href="${ctx}/good/query/of/"+index;
        }



</script>

<script src="${ctx}/static/plugins/jquery/jquery.js"></script>
</body>
</html>
