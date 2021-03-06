<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VouchFor Add Users to chat group</title>
    <link rel="shortcut icon" href="https://quickblox.com/favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<div class="jumbotron">
    <i class="icon-vouchfor"></i>
    <h1>VouchFor Add Users</h1>
    <p>Powered by VouchFor</p>

</div>
<div class="row">
<div class="col-sm-6">

<!-- User create -->
<div class="row">
    <h3>Add User to VouchFor chat group</h3>
    <form class="form-horizontal" role="form">
        <div class="form-group">
            <label class="control-label col-sm-2" for="usr_sgn_p_lgn">User:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="usr_sgn_p_lgn" placeholder="Enter login">
            </div>
        </div>
        <div class="form-group" hidden="true">
            <label class="control-label col-sm-2" for="usr_sgn_p_pwd">Password:</label>
            <div class="col-sm-6">
                <%--${usr_sgn_p_pwd}--%>
                <input type="text" value="${usr_sgn_p_pwd}" class="form-control" id="usr_sgn_p_pwd" placeholder="Enter password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="button" class="btn btn-primary" id="sign_up" data-toggle="modal" data-target="#progressModal">Try</button>
            </div>
        </div>
    </form>
</div>

<!-- User login -->
<%--<div class="row">--%>
    <%--<h3>User Sign In</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_sgn_n_lgn">Login:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_sgn_n_lgn" placeholder="Enter login">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_sgn_n_pwd">Password:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="password" class="form-control" id="usr_sgn_n_pwd" placeholder="Enter password">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="sign_in" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- User social login -->
<%--<div class="row">--%>
    <%--<h3>User Sign In with social provider</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_sgn_n_social_provider">Social provider:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_sgn_n_social_provider" placeholder="facebook or twitter">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_sgn_n_social_token">Social token:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_sgn_n_social_token" placeholder="Enter social token">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_sgn_n_social_secret">Social secret:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_sgn_n_social_secret" placeholder="Enter social secret">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="sign_in_social" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- User TWITTER_DIGITS login -->
<%--<div class="row">--%>
    <%--<h3>User Sign In with Twitter Digits</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary digits-button" id="sign_in_twitter_digits">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- User logout -->
<%--<div class="row">--%>
    <%--<h3>User Sign Out</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="sign_out" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>


<!-- User get -->
<%--<div class="row">--%>
    <%--<h3>Get users</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="sel_filter_for_users">Select filter:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<select class="form-control" id="sel_filter_for_users">--%>
                    <%--<option value="1" selected="selected">all users, no filters</option>--%>
                    <%--<option value="2">by id</option>--%>
                    <%--<option value="3">by login</option>--%>
                    <%--<option value="4">by fullname</option>--%>
                    <%--<option value="5">by facebook id</option>--%>
                    <%--<option value="6">by twitter id</option>--%>
                    <%--<option value="7">by email</option>--%>
                    <%--<option value="8">by tags</option>--%>
                    <%--<option value="9">by external id</option>--%>
                    <%--<option value="10">custom filters (check src code how to use)</option>--%>
                <%--</select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usrs_get_by_filter">Filter value:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usrs_get_by_filter" placeholder="Enter a value for filter:">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="get_by" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- User update -->
<%--<div class="row">--%>
    <%--<h3>User Update</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_upd_id">User ID:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_upd_id" placeholder="Enter user id to update">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_upd_full_name">New full name:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_upd_full_name" placeholder="Enter new value for fullname">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="update" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- Delete user  -->
<%--<div class="row">--%>
    <%--<h3>Delete user</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="sel_filter_for_delete_user">Delete user by:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<select class="form-control" id="sel_filter_for_delete_user">--%>
                    <%--<option value="1" selected="selected">by id</option>--%>
                    <%--<option value="2">by external id</option>--%>
                <%--</select>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_delete_id">Id:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_delete_id" placeholder="User id (or external id):">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="delete_by" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<!-- Reset password -->
<%--<div class="row">--%>
    <%--<h3>Reset password</h3>--%>
    <%--<form class="form-horizontal" role="form">--%>
        <%--<div class="form-group">--%>
            <%--<label class="control-label col-sm-2" for="usr_rst_email">User email:</label>--%>
            <%--<div class="col-sm-6">--%>
                <%--<input type="text" class="form-control" id="usr_rst_email" placeholder="Enter email to reset a password:">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="form-group">--%>
            <%--<div class="col-sm-offset-2 col-sm-10">--%>
                <%--<button type="button" class="btn btn-primary" id="reset" data-toggle="modal" data-target="#progressModal">Try</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

</div>

<div class="col-sm-6">
    <h3>Output</h3>
    <textarea readonly class="form-control" rows="7" id="output_place"></textarea>
</div>
</div>

<!-- Modal -->
<div id="progressModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Processing</h4>
            </div>
            <div class="modal-body">
                <p>performing request...</p>
            </div>
        </div>
    </div>
</div>

<%--<a href="https://github.com/QuickBlox/quickblox-javascript-sdk/tree/gh-pages/samples/users"--%>
   <%--style="position:absolute;top:2%;right:13%;font-size:0.85em;color:grey;">View source on GitHub</a>--%>

<%--</div>--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="https://cdn.digits.com/1/sdk.js" id="digits-sdk" async></script><!-- TWITTER_DIGITS SDK -->
<script src="${pageContext.request.contextPath}/resources/js/quickblox.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<!--<script src="../../quickblox.min.js"></script>-->
<script src="${pageContext.request.contextPath}/resources/js/config.js"></script>
<!--<script src="config.js"></script>-->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>
