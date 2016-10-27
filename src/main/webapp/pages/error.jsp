<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VouchFor Error</title>
    <link rel="shortcut icon" href="https://quickblox.com/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/libs/stickerpipe/css/stickerpipe.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>
        <div class="jumbotron">
            <i class="icon-vouchfor"></i>
            <h1>VouchFor</h1>
            <p>Powered by VouchFor</p>
        </div>

    <div><img src="../images/VouchForSmallLogo.png" class="load-msg"> </div>
        <div><img src="${pageContext.request.contextPath}/resources/images/loader.gif" class="load-msg"></div>
        <p> </p>
        <p> </p>
        <p> </p>
        <h3>${error}</h3>
        <h3>${error2}</h3>
        <h3>${error3}</h3>

</body>
</html>