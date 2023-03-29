<%@ page import="com.article.model.Categorie" %>
<%@ page import="java.util.List" %>
<%@ page import="com.article.model.Article" %><%--
  Created by IntelliJ IDEA.
  User: Princy
  Date: 20/03/2023
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<center><h2 style="color: #7b70be;"><i class="ion ion-ios-albums"></i> Ajout article </h2></center>

<%
    List<Categorie> list = (List<Categorie>) request.getAttribute("categories");
%>
<div class="row" style="margin-left: 280px;margin-bottom: 150px;">
    <div class="col-xl-6" style="width: 700px;">
        <div class="card">
            <div class="card-body">
                <center><h4 class="card-title">Formulaire </h4></center>
                <form class="custom-validation" action="/sites-articles/admin-create-article.gg" method="post" enctype="multipart/form-data">
                    <div class="mb-3">

                        <label class="form-label">Titre</label>
                        <div>
                            <input name="titre" type="text"
                                   class="form-control" required
                                   placeholder="Titre"/>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Resume</label>
                        <div>
                            <textarea name="resume" required class="form-control" placeholder="resume" rows="5"></textarea>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Categorie</label>
                        <select class="form-control select2" name="idcategorie">
                            <%
                                for (Categorie c : list) {
                            %>
                            <option value="<%= c.getId() %>"><%= c.getNom() %></option>
                            <%
                                }
                            %>
                        </select>
                    </div>

                    <div class="mb-3" >
                        <label class="form-label">Contenu</label>
                        <div>
                            <textarea style="height: 100px" name="contenu" id="idckeditor" ></textarea>
                        </div>
                    </div>


                    <div class="mb-0">
                        <div>
                            <button type="submit" class="btn btn-primary waves-effect waves-light me-1">
                                Create
                            </button>
                            <button type="reset" class="btn btn-secondary waves-effect">
                                Cancel
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</div>

<jsp:include page="footer.jsp"></jsp:include>