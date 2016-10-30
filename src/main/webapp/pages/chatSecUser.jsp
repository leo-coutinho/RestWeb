<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VouchFor Chat Engine</title>
  <link rel="shortcut icon" href="https://quickblox.com/favicon.ico">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/libs/stickerpipe/css/stickerpipe.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="jumbotron">
</div>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="glyphicon glyphicon-cog"></span>
          </button>
          <%--<a href="https://quickblox.com/developers/Chat"><img src="/resources/images/logo-quickblox.png" id="logo"></a>--%>
            <i class="icon-vouchfor"></i>
        </div>
        <div class="collapse navbar-collapse">

          <ul class="nav navbar-nav">

            <li class="active"><a href="#">Chat</a></li>
            <li><a href="#" onclick="showNewDialogPopup()">Create dialog</a></li>
            <li><a href="#" onclick="showDialogInfoPopup()">Dialog info</a></li>
            <li><a href="#" onclick="buildUserHtml('LeoC', '16464030', false)">1 to 1 latest Chat</a></li>
          </ul>
            <%--<button type="button" value="Confirm" id="" class="btn btn-success btn-lg btn-block" onclick="createUserDialog().click();">Create Userr dialog</button>--%>
          <%--<a href="https://github.com/QuickBlox/quickblox-javascript-sdk/tree/gh-pages/samples/chat"--%>
      		<%--style="position:absolute;top:20px;right:12%;font-size:0.85em;color:grey;">View source on GitHub</a>--%>
        </div><!--/.nav-collapse -->
      </div>
    </div>

  <!-- Main block -->
  <div class="container">
    <div id="main_block">

        <div class="panel panel-primary">
          <div class="panel-body">
            <div class="row">
              <div class="col-md-4">
                <div class="list-header">
                  <h4 class="list-header-title">History</h4>
                </div>
                <div class="list-group pre-scrollable nice-scroll" id="dialogs-list">
                <!-- list of chat dialogs will be here -->
                </div>
              </div>
                <div id="mcs_container" class="col-md-8 nice-scroll">
                  <div class="customScrollBox">
                    <div class="container del-style">
                      <div class="content list-group pre-scrollable nice-scroll" id="messages-list">
                        <!-- list of chat messages will be here -->
                      </div>
                    </div>
                  </div>
                    <div><img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" class="load-msg"></div>
                    <form class="form-inline" role="form" method="POST" action="" onsubmit="return submit_handler(this)">
	                  <div class="input-group">
		                  <span class="input-group-btn input-group-btn_change_load">
			              <input id="load-img" type="file">
			                <button type="button" id="attach_btn" class="btn btn-default" onclick="$('#load-img').click();">
				              <i class="icon-photo"></i>
			                </button>
		                  </span>
		                  <span class="input-group-btn input-group-btn_change_load">
			                <button type="button" id="stickers_btn" class="btn btn-default" onclick="">
				              <i class="icon-sticker"></i>
			                </button>
		                  </span>

		                  <span class="input-group-btn" style="width: 100%;">
			                 <input type="text" class="form-control" id="message_text" placeholder="Enter message">
		                  </span>

		                  <span class="input-group-btn">
			                <button  type="submit" id="send_btn" class="btn btn-default" onclick="clickSendMessage()">Send</button>
		                  </span>
	                    </div>
                      <img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" id="progress">
                    </form>
                </div>
              </div>
            </div>
          </div>
        </div>

    </div>

    <!-- Modal (login to chat)-->
    <div id="loginForm" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Sign In to VouchFor Chat</h3>
          </div>
          <div class="modal-body">
              <input type=hidden id="user" name="user" value="${user}"/>
              <input type=hidden id="name" name="name" value="${name}"/>
              <input type=hidden id="login" name="login" value="${login}"/>
              <input type=hidden id="pass" name="pass" value="${pass}"/>

              <input type=hidden id="secuser" name="user" value="${user}"/>
              <input type=hidden id="secId" name="userId" value="${secId}"/>
              <input type=hidden id="secname" name="name" value="${secname}"/>
              <input type=hidden id="seclogin" name="login" value="${login}"/>
              <input type=hidden id="secpass" name="pass" value="${pass}"/>

          <%--<td> ${user}</td>--%>
              <%--<td> ${id},${name},${login},${pass}</td>--%>
            <%--<button type="button" value="Quick" id= "${user}" class="btn btn-primary btn-lg btn-block">Sign in with Passed User</button>--%>
             <%--<button type="button" value="New" id= "${id},${name},${login},${pass}" class="btn btn-primary btn-lg btn-block">Sign in with Passed User</button>--%>
            <button type="button" value="Blox" id="userx" class="btn btn-success btn-lg btn-block">Please wait.. Sign in with   ${login}</button>

            <div class="progress">
              <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal (new dialog)-->
    <div id="add_new_dialog" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Choose users to create a dialog with</h3>
          </div>
          <div class="modal-body">
            <div class="list-group pre-scrollable for-scroll">
              <div id="users_list" class="clearfix"></div>
            </div>
            <div class="img-place"><img src="${pageContext.request.contextPath}/resources/images/ajax-loader.gif" id="load-users"></div>
              <input type="text" class="form-control" id="dlg_name" placeholder="Enter dialog name">
              <%--<button id="add-dialog" type="button" value="Confirm" id="" class="btn btn-success btn-lg btn-block" onclick="createUserDialog('16464030','LeoC')">Create dialog</button>--%>
              <%--<button id="add-dialog" type="button" value="Confirm" id="" class="btn btn-success btn-lg btn-block" onclick="createUserDialog(${secId},${secname})">Create dialog</button>--%>
              <button id="add-dialog" type="button" value="Confirm" id="" class="btn btn-success btn-lg btn-block" onclick="createNewDialog()">Create dialog</button>
            <div class="progress">
              <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Modal (update dialog)-->
    <div id="update_dialog" class="modal fade row" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Dialog info</h3>
          </div>
          <div class="modal-body">
            <div class="col-md-12 col-sm-12 col-xs-12 new-info">
              <h5 class="col-md-12 col-sm-12 col-xs-12">Name:</h5>
              <input type="text" class="form-control" id="dialog-name-input">
            </div>
            <h5 class="col-md-12 col-sm-12 col-xs-12 push">Add more user (select to add):</h5>
            <div class="list-group pre-scrollable occupants" id="push_usersList">
              <div id="add_new_occupant" class="clearfix"></div>
            </div>
            <h5 class="col-md-12 col-sm-12 col-xs-12 dialog-type-info"></h5>
            <h5 class="col-md-12 col-sm-12 col-xs-12" id="all_occupants"></h5>
            <button id="update_dialog_button" type="button" value="Confirm" id="" class="btn btn-success btn-ms btn-block"
              onclick="onDialogUpdate()">Update</button>
            <button id="delete_dialog_button" type="button" value="Confirm" id="for_width" class="btn btn-danger btn-ms btn-block"
              onclick="onDialogDelete()">Delete dialog</button>
          </div>
        </div>
      </div>
    </div>


  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/quickblox/2.1.4/quickblox.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.6.0/jquery.nicescroll.min.js" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timeago/1.4.1/jquery.timeago.min.js" type="text/javascript"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>

  <!--<script src="/js/quickblox.min.js"></script>--%>-->
    <script src="${pageContext.request.contextPath}/resources/js/quickblox.min.js"></script>

  <script src="${pageContext.request.contextPath}/resources/libs/stickerpipe/js/stickerpipe.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/config.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/connection.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/messages.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/stickerpipe.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/ui_helpers.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/dialogs.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/users.js"></script>

</body>
</html>
