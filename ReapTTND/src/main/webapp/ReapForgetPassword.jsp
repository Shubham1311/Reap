<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Reap</title>
<script type="text/javascript">
            function validateForm(form)
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
                    var errors = [];
                    if (!ck_email.test(email))
                    {
                        errors[errors.length] = "You must enter a valid email address.";
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
<link rel="icon" href="images/favicon.ico">
<link href="ReapCSS/ReapForgetPassword-style.css" rel='stylesheet'
	type='text/css' />

</head>
<body>
	<div id="main">
		<div class="main">
			<div class="login-form">
				<h1>Forget Password</h1>
				<div class="head">
					<img src="images/user.png" alt="" />
				</div>
				<form name="myForm" method="post"
					onsubmit="return validateForm(this)"
					action="ReapForgetPasswordValidate">
					<input type="email" name="emailID" required class="text" id="email"
						placeholder="Enter email">
					<div class="submit" onclick="noBack()">
						<input type="submit" value="SUBMIT">
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>