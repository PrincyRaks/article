<%@ page import="com.article.model.Article" %>
<%--
  Created by IntelliJ IDEA.
  User: Princy
  Date: 21/03/2023
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<%
    Article article = (Article) request.getAttribute("article");
%>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h1 style="color: #7b70be;"><%= article.getTitre() %></h1>
                    <strong><%= article.getResume() %></strong>
                    <br>
                    <br>
                    <%= article.getContenu() %>
                </div>
            </div>
        </div>
    </div>


<jsp:include page="footer.jsp"></jsp:include>