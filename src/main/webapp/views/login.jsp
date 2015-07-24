<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>AD2 | Log in</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link rel="shortcut icon" href="http://amritad2.in/images/ico/favicon.ico" type="image/png">
        <!-- bootstrap 3.0.2 -->
        <link href="http://abdf.in/ad2/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="http://abdf.in/ad2/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="http://abdf.in/ad2/resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    <style>
.bubblingG {
text-align: center;
width:80px;
height:50px;
}

.bubblingG span {
display: inline-block;
vertical-align: middle;
width: 10px;
height: 10px;
margin: 25px auto;
background: #04C786;
-moz-border-radius: 50px;
-moz-animation: bubblingG 1.2s infinite alternate;
-webkit-border-radius: 50px;
-webkit-animation: bubblingG 1.2s infinite alternate;
-ms-border-radius: 50px;
-ms-animation: bubblingG 1.2s infinite alternate;
-o-border-radius: 50px;
-o-animation: bubblingG 1.2s infinite alternate;
border-radius: 50px;
animation: bubblingG 1.2s infinite alternate;
}

#bubblingG_1 {
-moz-animation-delay: 0s;
-webkit-animation-delay: 0s;
-ms-animation-delay: 0s;
-o-animation-delay: 0s;
animation-delay: 0s;
}

#bubblingG_2 {
-moz-animation-delay: 0.36s;
-webkit-animation-delay: 0.36s;
-ms-animation-delay: 0.36s;
-o-animation-delay: 0.36s;
animation-delay: 0.36s;
}

#bubblingG_3 {
-moz-animation-delay: 0.72s;
-webkit-animation-delay: 0.72s;
-ms-animation-delay: 0.72s;
-o-animation-delay: 0.72s;
animation-delay: 0.72s;
}

@-moz-keyframes bubblingG {
0% {
width: 10px;
height: 10px;
background-color:#04C786;
-moz-transform: translateY(0);
}

100% {
width: 24px;
height: 24px;
background-color:#FFFFFF;
-moz-transform: translateY(-21px);
}

}

@-webkit-keyframes bubblingG {
0% {
width: 10px;
height: 10px;
background-color:#04C786;
-webkit-transform: translateY(0);
}

100% {
width: 24px;
height: 24px;
background-color:#FFFFFF;
-webkit-transform: translateY(-21px);
}

}

@-ms-keyframes bubblingG {
0% {
width: 10px;
height: 10px;
background-color:#04C786;
-ms-transform: translateY(0);
}

100% {
width: 24px;
height: 24px;
background-color:#FFFFFF;
-ms-transform: translateY(-21px);
}

}

@-o-keyframes bubblingG {
0% {
width: 10px;
height: 10px;
background-color:#04C786;
-o-transform: translateY(0);
}

100% {
width: 24px;
height: 24px;
background-color:#FFFFFF;
-o-transform: translateY(-21px);
}

}

@keyframes bubblingG {
0% {
width: 10px;
height: 10px;
background-color:#04C786;
transform: translateY(0);
}

100% {
width: 24px;
height: 24px;
background-color:#FFFFFF;
transform: translateY(-21px);
}

}
</style> 
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header" style="background-color:${logoNavColor};">AD2 Sign In</div>
            
            <form name='loginForm' action="/login" method='POST'>
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="username" id="username" class="form-control" placeholder="User ID"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control" placeholder="Password"/>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me" id="remember_me"/> Remember me
	                    </div>
						<c:if test="${not empty error}">
							<div class="error" style="color: #a94442;">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="msg" style="color: #31708f;">${msg}</div>
						</c:if>
				</div>
                <div class="footer">  
                <style>
                .bg-olive {
					background-color: #3D8E99 !important;
				}
                </style>                                                             
                    <button  type="submit" class="btn  btn-block" style="background-color:${logoNavColor};color:white;">Sign me in</button>                       
                    <a href="http://amritad2.in/" target="_blank" class="btn btn-block" style="background-color:${logoNavColor};color:white;">AmritaD2.in</a>              
                </div>
                 <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />  
            </form>
          

            <div class="margin text-center">
                <span>Amrita Center for Cyber Security Systems and Networks (Amrita University) © 2014 All Rights Reserved</span>
               <!--  <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button> -->

            </div>
        </div>
<div class="modal fade" id="requestDemo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id=""style="color:#717171;">
						<i class="fa fa-cogs"></i> <b>Request for Demo Version</b> <span class="" id=""></span>
					</h4>
				</div>
				<div class="modal-body">
					<div class="row " id="modalConfigFields">
					<label id="initial" class="control-label" style="color:green;" for="inputSuccess"><i class="fa fa-check"></i>Enter your email address, then Click Proceed. We'll email you the username and password.</label><br><br>
					<label id="noti" class="control-label" style="color:green;" for="inputSuccess"></label>
						<div id="uploadForm" class="col-xs-5 col-md-offset-3">
							<div class="body bg-gray">
                   <!--  <div class="form-group">
                        <input type="text" name="emailId" id="emailId" class="form-control" placeholder="Enter email address">
                    </div> -->
                           <div class="input-group input-group-sm">
                           
                                        <input id="emailField" type="text" class="form-control" placeholder="Email" style=" width: 200px;font-size: medium;">
                                        <span class="input-group-btn" >
                                            <button id="proceedBtn" class="btn btn-success btn-flat"></button>
                                        </span>
                                    </div> 

				</div>	
				<div class="bubblingG hide" >
					<span id="bubblingG_1">
					</span>
					<span id="bubblingG_2">
					</span>
					<span id="bubblingG_3">
					</span>
				</div> 
						</div>					
						<h3 class="text-center text-muted">
							<span id="noConfig"></span>
						</h3>
					</div>
					<hr/>
					<!-- <div class="modal-footer">
						<input type="submit" value="Upload" class="btn btn-primary">
					</div> -->
				</div>
			</div>
		</div>
</div>	

        <!-- jQuery 2.0.3 -->
        <script  src="http://abdf.in/ad2/resources/js/jquery-2.0.3.min.js"></script>
        <!-- Bootstrap -->
        <script src="http://abdf.in/ad2/resources/js/bootstrap.min.js" type="text/javascript"></script>   
       <script>
            $(function() {
            	
                if (localStorage.chkbx && localStorage.chkbx != '') {
                    $('#remember_me').attr('checked', 'checked');
                    $('#username').val(localStorage.usrname);
                    $('#password').val(localStorage.pass);
                } else {
                    $('#remember_me').removeAttr('checked');
                    $('#username').val('');
                    $('#password').val('');
                }
                
                $('#remember_me').click(function() {        	 
                    if ($('#remember_me').is(':checked')) {
                        // save username and password
                        localStorage.usrname = $('#username').val();
                        localStorage.pass = $('#password').val();
                        localStorage.chkbx = $('#remember_me').val();
                    } else {
                        localStorage.usrname = '';
                        localStorage.pass = '';
                        localStorage.chkbx = '';
                    }
                });
                
                // code open and to validate request for demo.
                $('#demoRequest').click(function(){
                	$('#requestDemo').modal();
                	$('#emailField').css('background-color','#FFF');
                	$('#uploadForm  p').remove('');
                	$('#noti h4').remove();
                	$('.input-group').show(); 
                	$('#noti').hide(); 
                	$('#initial').show();  
                	$('.bubblingG').addClass('hide');
                	$('#proceedBtn').text('Proceed');
                	$('#proceedBtn').removeAttr('disabled');
                });
                
                $('#proceedBtn').click(function(){            
                	var emailValue = $('#emailField').val(); 
                	$('#uploadForm  p').remove('');
                	if(emailValue.length ==0){
                		$('#emailField').css('background-color','#F3BABA');
                		$('#uploadForm').append('<p style="color:#DA5555;">* Email field empty</p>');
                	}
                	else {                	                		   
                		    var valid = validateEmail(emailValue);
                		    if (!valid) {
                		    	$('#emailField').css('color', '#D73333');
                		        $('#uploadForm').append('<p style="color:#DA5555;">* Invaild email </p>');

                		    } else {
                		    	$('#proceedBtn').text('Please Wait...');
                		    	$('#proceedBtn').attr('disabled','disabled');
                		    	$('#emailField').css('color', '#069446');  
                		    	$('.bubblingG').removeClass('hide');
                		    	$.ajax({
                		    		type : "GET",
                		    		url : "/requestDemo?emailId="+emailValue,
                		    		success : function(data) {
                		    			$('#uploadForm  p').remove('');
                		    			$('.input-group').hide(); 
                		    			$('#initial').hide();
                		    			$('#noti').show();                 		    			
                		    			if(data == 'success') {
                		    				$('#noti').append('<h4 style="color:#008000; text-align: center;"><i class="fa fa-check"></i> Username and password will email you at '+emailValue+'</h4>');
                		    			}
                		    			else if(data == 'Registred') {
                		    				$('#noti').append('<h4 style="color:#C90107; text-align: center;"><i class="fa fa-times-circle"></i>User already registered !!!</h4>');
                		    			}
                		    			else {
                		    				$('#noti').append('<h4 style="color:#C90107; text-align: center;"><i class="fa fa-times-circle"></i> Failed to send Username and password to '+emailValue+'</h4>');
                		    			}
                		    			
                		    			$('.bubblingG').addClass('hide');
                		    		},
                		    		error : function(data) {
                		    			$('#uploadForm  p').remove('');
                		    			$('.input-group').hide(); 
                		    			$('#initial').hide();
                		    			$('#noti').show(); 
                		    			$('#noti').append('<h4 style="color:#C90107; text-align: center;"><i class="fa fa-times-circle"></i> Error in backend server...! </h4>');
                		    			$('.bubblingG').addClass('hide');
                		    		}
                		    	});
                		    }
                		                   		
                	}
                }); 
                
                $('#emailField').keypress(function(){
                	$('#emailField').css('background-color','#FFF');
                	$('#uploadForm  p').remove('');
                });
                
                $('#emailField').keyup(function() {
        		    var value = $(this).val();
        		    var valid = validateEmail(value);
        		    if (!valid) {
        		        $(this).css('color', '#D73333');

        		    } else {
        		        $(this).css('color', '#069446');
        		        
        		    }
        		});
                
               
            });
            var validateEmail = function(elementValue) {
    		    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    		    return emailPattern.test(elementValue);
    		}
        </script>     

    </body>
</html>



<%--  <!DOCTYPE html>

<html>
<meta name="http-equiv" content="Content-type: text/html; charset=UTF-8"/>
<script  src="http://abdf.in/ad2/resources/js/jquery-2.0.3.min.js"></script>
<head>
<title>Login Page</title>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}
 
.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}
 
#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
</head>
<body >

 
	<div id="login-box">
 
		<h3>Login with Username and Password</h3>
 
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
 
		<form name='loginForm' action="/login" method='POST'>
 
		  <table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="submit" /></td>
			</tr>
		  </table>
 
		   <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />  
 
		</form>
	</div>
	<script>
	   $(document).ready(function(){
	    	
	   }); 
	</script>

</body>
</html> --%>