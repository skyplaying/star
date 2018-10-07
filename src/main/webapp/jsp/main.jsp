<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息管理系统</title>
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
</head>
<body>
<form>
    <table class="layui-table">
        <thead>
        <tr>
            <th >商品编号</th>
            <th width="30px;">商品名称</th>
            <th>商品价格（单位）</th>
            <th>库存数量</th>
            <th>订单状态</th>
            <th>商品区域(1.朝阳2.海淀3.丰台4.西城5.昌平)</th>
            <th>创建时间</th>
            <th>操作</th>  <th>操作</th>  <th>操作</th>

            <%--<th>操作</th>--%>
        </tr>
        </thead>
        <%--  三大排序要求  数量的降序，日期的升序，价格降序 --%>
        <tbody>
        <c:forEach items="${page.list}" var="ob">
            <tr>
                <td>${ob.id}</td>
                <td width="30px;">${ob.goodsName}</td>
                <td>
                        ${ob.goodsPrice}
                </td>

                <td>${ob.goodsCount}</td>
                <td>${ob.billStatus}</td>
                <td>${ob.goodsDistrict}</td>



                <td>${ob.creationTime}</td>
                <%-- 根据id查询返回 修改页面--%>
                <td><a href="${ctx}/good/query/by/${ob.id}">修改</a></td>
                <td><a href="${ctx}/good/delete/${ob.id}">删除</a></td>
                <td><a href="${ctx}/jsp/add.jsp">新增</a></td>


            </tr>

        </c:forEach>
        <tr>
            <td> 共${page.total} 条记录 第 ${page.pageNum} / ${page.pages}页</td>
            <td colspan="8"> <a href="${ctx}/good/pageTo/${page.pageNum=1}">首页</a>
                <a href="${ctx}/good/pageTo/${page.pageNum-1}">上一页</a>
                <a href="${ctx}/good/pageTo/${page.pageNum+1}">下一页</a>
                <a href="${ctx}/good/pageTo/${page.pages}">尾页</a>
            </td>
        </tr>



        </tbody>
    </table>
    <a href="${ctx}/good/select">点击另一个查询页面</a>
    <p> <a href="${ctx}/good/page"> 返回商品详情首页</a></p>
</form>
<%-- 导入前端框架--%>
<script src="${ctx}/static/plugins/layui/layui.js"></script>
<script>
   $(function () {

       alert(${ob.id});
   })
</script>
</body>
</html>
