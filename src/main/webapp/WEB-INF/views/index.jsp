<%@ page import="com.article.model.Article" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Princy
  Date: 20/03/2023
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<%

    List<Article> list = (List<Article>) request.getAttribute("articles");

%>


<div class="row">
    <div class="card">
        <div class="card-body">
            <div id="carouselExampleCaption" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img style="width: 1200px;height: 200px;"  src="/assets/images/small/img-5.jpg" >
                        <div class="carousel-caption d-none d-md-block">
                            <h1 class="text-white">Sites Articles</h1>
                            <h5>Listes des articles du moment avec divers categories</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="row" style="clear: right;margin-bottom: 150px">
    <%
        for(Article a : list){
    %>
    <div class="col-lg-4">
        <div class="card card-body">
            <h2><%= a.getTitre() %></h2>
            <h5><%= a.getResume() %></h5>
            <br>
            <a href="/sites-articles/page-article-<%= a.getId() %>.gg" class="btn btn-primary waves-effect waves-light">En savoir plus</a>
        </div>
    </div>
    <%
        }
    %>
</div>


<jsp:include page="footer.jsp"></jsp:include>