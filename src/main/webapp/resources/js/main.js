// Init QuickBlox application here
//
QB.init(QBApp.appId, QBApp.authKey, QBApp.authSecret);

$(document).ready(function() {

  // First of all create a session and obtain a session token
  // Then you will be able to run requests to User
  //
  QB.createSession(function(err,result){
    console.log('Session create callback', err, result);
//      alert("creating callback");
      getby();
  });


  // Init Twitter Digits
  //

//    $("#fileinput").click();
//    $( "#get_by" ).trigger( "click" );
//    $( "#get_by").trigger("click");
//    alert("Im a buttom");
  var digitsKey = 'uH2aUsd3BP0qLpTezVnqXyZAk';

  $('#digits-sdk').load(function () {
//      alert("Im loading");
    Digits.init({ consumerKey: digitsKey })
      .done(function() {
        console.log('Digits initialized.');
      })
      .fail(function(error) {
        console.log('Digits failed to initialize: ' + JSON.stringify(error));
      });

    // Login user twitter digits
    $('#sign_in_twitter_digits').on('click', function() {
      Digits.logIn()
        .done(function(loginResponse) {

          var params = {
            provider: 'twitter_digits',
            twitter_digits: loginResponse.oauth_echo_headers
          };

          // login with twitter_digits params
          QB.login(params, function(err, user){
            if (user) {
              $('#output_place').val(JSON.stringify(user));
            }else{
              $('#output_place').val(JSON.stringify(err));
            }
          });

        })
        .fail(function(error) {
          console.log('Digits failed to login: ' + JSON.stringify(error));
        });
    });
  });

  // Create user
  //
  $('#sign_up').on('click', function() {
    var login = $('#usr_sgn_p_lgn').val();
    var password = $('#usr_sgn_p_pwd').val();
//     alert(password);
    var params = { 'login': login, 'password': password};

    QB.users.create(params, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });


  // Login user
  //
  $('#sign_in').on('click', function() {
    var login = $('#usr_sgn_n_lgn').val();
    var password = $('#usr_sgn_n_pwd').val();

//      alert(login);
//      alert(password);
    var params = { 'login': login, 'password': password};

    QB.login(params, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });

  // Login user with social provider
  //
  $('#sign_in_social').on('click', function() {

    var provider = $('#usr_sgn_n_social_provider').val();
    var token = $('#usr_sgn_n_social_token').val();
    var secret = $('#usr_sgn_n_social_secret').val();

    var params = { 'provider': provider, 'keys[token]': token, 'keys[secret]': secret};

    QB.login(params, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });

  // Logout user
  //
  $('#sign_out').on('click', function() {
     QB.logout(function(err, result){
      if (result) {
        $('#output_place').val(JSON.stringify(result));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });
    $("#myClick").trigger('click');
    $('#myClick').on('click', function() {
//        alert("calling getby") ;
        getby();
//        $( '#get_by').trigger('click');
    });

//     $("#dialogClick").trigger('click');
//     $('#dialogClick').on('click', function() {
// //        alert("calling getby") ;
//         getdialogUser();
//        $( '#get_by').trigger('click');
//     });


    // Get User
//     function getdialogUser(dialogueUser) {
//         //
//         // $('#get_by').on('click', function() {
// //      alert("gottriggered")      ;
//         var filter_value = $('#usrs_get_by_filter').val();
//         var filter_type = $("#sel_filter_for_users option:selected").val();
//
//         var params;
//
//         var request_for_many_user = false;
//
//         var pathname =  window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
//
//
//         QB.users.get(params, function(err, dialogueUser){
//             if (user) {
// //            alert("is user");
//                 var json = JSON.parse(JSON.stringify(user));
//                 alert(JSON.stringify(user));
//                 aler("dialogueUser");
// //            var pathname =  window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
// //            alert(JSON.stringify(user));
// //            alert(pathname);
// //                 $.ajax({
// //                     method: "POST",
// //                     url: pathname + "/logUsers",
// // //                url: "/RestWebChat/logUsers",
// //                     contentType: "application/json; charset=utf-8",
// //                     data: JSON.stringify(user),
// //                     success:function(response){
// // //                    if (response.redirect) {
// // //                    alert("Im going to chat");
// // //                    window.location.assign("/RestWebChat/chatNew/chat");
// //                         window.location.href =  pathname + "/chatNew/chat";
// // //                    }
// //                     } ,
// //                     error:function(response){
// // //                    alert(response.toString());
// // //                    alert("error");
// //                         window.location.href =  pathname +"/RestWebChat/error";
// // //                    window.location.href = "/error";
// //                     }
// //
// //                 });
//                 return JSON.stringify(user);
//                 // $('#output_place').val(JSON.stringify(user));
//             } else  {
//                 // window.location.href =  pathname + "/RestWebChat/error";
//                 // $('#output_place').val(JSON.stringify(err));
//                 return JSON.stringify(err);
//             }
//
//             // $("#progressModal").modal("hide");
//
//             // $("html, body").animate({ scrollTop: 0 }, "slow");
//         });
//
//         }
        //});
    // }





 //   getby();
//    var filter_value = $('#usrs_get_by_filter').val();
  // Get User
    function getby() {
  //
 // $('#get_by').on('click', function() {
      alert("gottriggered")      ;
    var filter_value = $('#usrs_get_by_filter').val();
    var filter_type = $("#sel_filter_for_users option:selected").val();

    var params;

    var request_for_many_user = false;
    var fullName_request = false;

    var pathname =  window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));

    switch (filter_type) {
      // all User, no filters<
      case "1":
        params = { page: '1', per_page: '100'};
        request_for_many_user = true;
        break;

      // by id
      case "2":
        params = parseInt(filter_value);
        break;

      // by login
      case "3":
        params = {login: filter_value};
          alert("Next Alert is filter value");
         alert(filter_value);
        break;

      // by fullname
      case "4":
        params = {full_name: filter_value};
        fullName_request = true;
        alert("FULLNAME Alert is filter value");
        alert(filter_value);

        break;

      // by facebook id
      case "5":
        params = {facebook_id: filter_value};
        break;

      // by twitter id
      case "6":
        params = {twitter_id: filter_value};
        break;

      // by email
      case "7":
        params = {email: filter_value};
        break;

      // by tags
      case "8":
        params = {tags: filter_value};
        break;

      // by external id
      case "9":
        params = {external: filter_value};
        break;

      // custom filters
      case "10":
        // More info about filters here
        // http://quickblox.com/developers/User#Filters
        params = {filter: { field: 'login', param: 'in', value: ["sam33","ivan_gram"] }};
        request_for_many_user = true;
        break;
    }

    console.log("filter_value: " + filter_value);

    if(request_for_many_user){
      QB.users.listUsers(params, function(err, result){
        if (result) {

            var json = JSON.parse(JSON.stringify(result));
//            alert(JSON.stringify(result));
//            alert("Im going to addUsers/");
            $.ajax({
                method: "POST",
                url: pathname +"/addUsers/",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(result),
                success:function(response){
//                    if (response.redirect) {
//                        alert("Im Back from addUsers, going to addUsers/add");
                        window.location.href = pathname + "/addUsers/add";
//                    }
                }
            });

          $('#output_place').val(JSON.stringify(result));
        } else  {
          $('#output_place').val(JSON.stringify(err));
        }

        console.log("current_page: " + result.current_page);
        console.log("per_page: " + result.per_page);
        console.log("total_entries: " + result.total_entries);
        console.log("count: " + result.items.length);

        $("#progressModal").modal("hide");

        $("html, body").animate({ scrollTop: 0 }, "slow");
      });
    }else if (fullName_request){
      QB.users.get(params, function(err, user){
        if (user) {
            alert("is user Fullname Request");
          // params = {full_name: filter_value};
             // var dialogUser = getdialogUser("LeoC");

            // user = user + dialogUser;
            var json = JSON.parse(JSON.stringify(user));
//            var pathname =  window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
            alert(JSON.stringify(user));
//            alert(pathname);
            $.ajax({
                method: "POST",
                url: pathname + "/logUsersToChat",
//                url: "/RestWebChat/logUsers",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(user),
                success:function(response){
//                    if (response.redirect) {
//                    alert("Im going to chat");
//                    window.location.assign("/RestWebChat/chatNew/chat");
                    window.location.href =  pathname + "/chatNew/chat";
//                    }
                } ,
                error:function(response){
//                    alert(response.toString());
//                    alert("error");
                    window.location.href =  pathname +"/error";
//                    window.location.href = "/error";
                }

            });

            $('#output_place').val(JSON.stringify(user));
        } else  {
            window.location.href =  pathname + "/RestWebChat/error";
            $('#output_place').val(JSON.stringify(err));
        }

        $("#progressModal").modal("hide");

        $("html, body").animate({ scrollTop: 0 }, "slow");
      });
    } else {
    QB.users.get(params, function(err, user){
      if (user) {
        alert("is user just before dialog user");
        // params = {full_name: filter_value};
        // var dialogUser = getdialogUser("LeoC");

        // user = user + dialogUser;
        var json = JSON.parse(JSON.stringify(user));
//            var pathname =  window.location.pathname.substring(0,window.location.pathname.indexOf("/",2));
        alert(JSON.stringify(user));
//            alert(pathname);
        $.ajax({
          method: "POST",
          url: pathname + "/logUsers",
//                url: "/RestWebChat/logUsers",
          contentType: "application/json; charset=utf-8",
          data: JSON.stringify(user),
          success:function(response){
//                    if (response.redirect) {
//                    alert("Im going to chat");
//                    window.location.assign("/RestWebChat/chatNew/chat");
            window.location.href =  pathname + "/getUserToChat";
//                    }
          } ,
          error:function(response){
//                    alert(response.toString());
//                    alert("error");
            window.location.href =  pathname +"/RestWebChat/error";
//                    window.location.href = "/error";
          }

        });

        $('#output_place').val(JSON.stringify(user));
      } else  {
        window.location.href =  pathname + "/RestWebChat/error";
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  }
  //});
    }
  // Update user
  //
  $('#update').on('click', function() {
    var user_id = $('#usr_upd_id').val();
    var user_fullname = $('#usr_upd_full_name').val();

    QB.users.update(parseInt(user_id), {full_name: user_fullname}, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });

  // Delete user
  //
  $('#delete_by').on('click', function() {
    var user_id = $('#usr_delete_id').val();
    var operation_type = $("#sel_filter_for_delete_user option:selected").val();

    var params;

    switch (operation_type) {
      // delete by id
      case "1":
        params = parseInt(user_id);
        break;

      // delete by external id
      case "2":
        params = {external: user_id};
        break;
    }

    QB.users.delete(params, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });

  // Reset email
  //
  $('#reset').on('click', function() {
    var user_email = $('#usr_rst_email').val();

    QB.users.resetPassword(user_email, function(err, user){
      if (user) {
        $('#output_place').val(JSON.stringify(user));
      } else  {
        $('#output_place').val(JSON.stringify(err));
      }

      $("#progressModal").modal("hide");

      $("html, body").animate({ scrollTop: 0 }, "slow");
    });
  });
});
