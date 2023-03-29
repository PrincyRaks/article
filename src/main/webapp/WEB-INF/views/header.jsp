<%@ page import="com.article.model.Article" %><%--
  Created by IntelliJ IDEA.
  User: Princy
  Date: 20/03/2023
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="fr">


<!-- Mirrored from themesbrand.com/lexa/layouts/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 13 Jan 2023 07:47:17 GMT -->
    <%
        String title = "Sites Articles-liste des articles & divers categories";
        String description= "sites d'articles avec divers categories";
        if (request.getAttribute("article") != null ){
            Article article = (Article) request.getAttribute("article");
            title = "Sites Articles - " + article.getTitre();
            description = "sitest article - " + article.getResume();
        }
    %>

<head>

    <meta charset="utf-8" />

    <%--  Important  --%>
    <title><%= title %></title>
    <meta content= "<%= description %>" name="description" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0">$
    <!-- App favicon -->
    <link rel="shortcut icon" href="/assets/images/favicon.ico">

    <link href="/assets/css/bootstrap.min.css"  rel="stylesheet" type="text/css" />
    <link href="/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

    <link href="/assets/libs/dropzone/min/dropzone.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css " rel="stylesheet">
    <link href="/assets/libs/spectrum-colorpicker2/spectrum.min.css " rel="stylesheet" type="text/css">
    <link href="/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css " rel="stylesheet" />

    <%--  CKEditor  --%>
    <link type="text/css" href="/assets/ckeditor5-build-classic/sample/css/sample.css" rel="stylesheet" media="screen" />

</head>
