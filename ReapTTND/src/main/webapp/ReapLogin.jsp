<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reap Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="images/favicon.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
.modal-header, h4, .close {
	background-color: #5cb85c;
	color: white !important;
	text-align: center;
	font-size: 30px;
}

.modal-header .close {
	margin-top: -5px;
}

.modal-footer {
	background-color: #f9f9f9;
}

body {
	background-color: skyblue;
}

.modl {
	min-width: 300px;
}

#forgetPass {
	margin-top: 10px;
}

#myModal>div>div>div.modal-footer>button {
	margin-top: 3px;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Click Login Button</h2>
		<button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>

		<div class="modal fade" id="myModal" data-backdrop="static"
			data-keyboard="false" role="dialog"
			aria-labelledby="gridSystemModalLabel">
			<div class="modal-dialog">

				<div class="modal-content modl">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-lock"></span> Login
						</h4>
					</div>
					<div class="modal-body" style="padding: 40px 50px;">
						<form role="form" method="post" action="LoginServlet"
							onSubmit="return validate(this);" name="form">
							<div class="form-group">
								<label for="usrname"><span
									class="glyphicon glyphicon-user"></span> Username ( Username is
									your Email Id )</label> <input type="email" class="form-control"
									id="email" name="emailID" placeholder="Enter email" required>
							</div>
							<div class="form-group">
								<label for="psw"><span
									class="glyphicon glyphicon-eye-open"></span> Password</label> <input
									type="password" class="form-control" id="password" name="password"
									placeholder="Enter password" required>
							</div>
							<div class="checkbox">
								<label><input type="checkbox" value="" checked>Remember
									me</label>
							</div>
							<button type="submit" class="btn btn-success btn-block">
								<span class="glyphicon glyphicon-off" id="login"></span> Login
							</button>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-danger btn-default pull-left"
							data-dismiss="modal">
							<span class="glyphicon glyphicon-remove close1"></span> Cancel
						</button>
						<!--<p>Not a member? <a href="#">Sign Up</a></p>-->
						<p id="forgetPass">
							Forgot <a href="ReapForgetPassword.jsp">Password?</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
            $(document).ready(function()
            {
                $("#myBtn").click(function()
                {
                    $("#myModal").modal();
                });
            });
            function validate(form)
            {
                //Name: Alphabets, numbers and space(' ') no special characters min 3 and max 20 characters.
                    var ck_name = /^[A-Za-z0-9 ]{3,20}$/;
                //Email: Standard email address 
                    var ck_email = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                //UserId: Supports alphabets and numbers no special characters except underscore('_') min 3 and max 20 characters. 
                    var ck_username = /^[A-Za-z0-9_]{1,20}$/;
                //Password: Password supports special characters and here min length 6 max 20 charters.
                    var ck_password =  /^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
                    var email = form.email.value;
                    var password = form.password.value;
                    var errors = [];
                    if (!ck_email.test(email))
                    {
                        errors[errors.length] = "You must enter a valid email address.";
                    }
                    if (!ck_password.test(password)) 
                    {
                        errors[errors.length] = "You must enter a valid Password.";
                        form.password.value = "";
                    }
                    if (errors.length > 0)
                    {
                        reportErrors(errors);
                        return false;
                    }
                    return true;
            }
                function reportErrors(errors)
                {
                    var msg = "Please Enter Valide Data...\n";
                    for (var i = 0; i<errors.length; i++) 
                    {
                        var numError = i + 1;
                        msg += "\n" + numError + ". " + errors[i];
                    }
                    alert(msg);
                }
        </script>
</body>
</html>