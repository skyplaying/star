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
<form action="${ctx}">
    <table class="layui-table">
        <thead>
<c:forEach items="${page}" var="ob">
        <tr>
             <th>商品编号</th><th><input name="id" type="text" value="${ob.id}"></th>

        </tr>
        <tr><th>商品名称</th><th><input name="goodsName" type="text"value="${ob.goodsName}"></th></tr>
        <tr><th>商品价格</th><th><input  name="goodsPrice" type="text"value="${ob.goodsPrice}"></th></tr>
        <tr><th>库存数量</th><th><input name="goodsCount" type="text"value="${ob.goodsCount}"></th></tr>
        <tr><th>订单状态</th><th><input  name="billStatus"type="text" value="${ob.billStatus}"></th></tr>
</c:forEach>
        </thead>
        <tbody>

        <%--<tr>--%>
            <%--<td> 共${page.total} 条记录 第 ${page.pageNum} / ${page.pages}页</td>--%>
            <%--<td colspan="8"> <a href="${ctx}/good/page/${page.pageNum==1}">首页</a>--%>
                <%--<a href="${ctx}/good/page/${page.pageNum-1}">上一页</a>--%>
                <%--<a href="${ctx}/good/page/${page.pageNum+1}">下一页</a>--%>
                <%--<a href="${ctx}/good/page/${page.pages}">尾页</a>--%>
            <%--</td>--%>
        <%--</tr>--%>


      <tr>
          <td><input type="submit"value="提交"></td><td><button id="back" ><a href="javascript:history.go(-1)">返回</a></button></td>
          <td> <a href="${ctx}/good/page"> 返回商品详情首页</a></td>
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
