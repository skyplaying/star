<%--
  Created by IntelliJ IDEA.
  User: 独听北风
  Date: 2018/9/30
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
<html>
<head>
    <title>修改商品信息</title>
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
</head>
<body>
<form action="${ctx}/good/add">
    <table class="layui-table">
        <thead>

            <tr>
                <%--<th>商品编号</th><th><input name="id" type="text" value=""></th>--%>

            </tr>
            <tr><th>商品名称</th><th><input name="goodsName" type="text"value=""></th></tr>
            <tr><th>商品价格</th><th><input  name="goodsPrice" type="text"value=""></th></tr>
            <tr><th>库存数量</th><th><input name="goodsCount" type="text"value=""></th></tr>
            <tr><th>订单状态</th><th><input  name="billStatus"type="text" value=""></th></tr>

        </thead>
        <tbody>




        <tr>
            <td><input type="submit"value="提交"></td><td><button id="back" ><a href="javascript:history.go(-1)">返回</a></button></td>
            <td> <a href=/good/page> 返回商品详情首页</a></td>
        </tr>
        </tbody>
    </table>

</form>
<script>
    $(function () {
        $('#back').click(function () {

            history.back();
        })

    })
</script>
<script src="${ctx}/static/plugins/jquery/jquery.js"></script>
<script src="${ctx}/static/plugins/layui/layui.js"></script>

</body>
</html>
