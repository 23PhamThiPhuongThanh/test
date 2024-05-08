<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>
    <body>
        <div class="form-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8">
                        <div class="form-container">
                            <form class="form-horizontal" action="signup" method="post">

                                <h3 class="title">SignUp</h3>
                                <span class="description">Fill in below</span>
                                <div class="form-group">
                                    <p class="text-danger">${mess}</p>
                                    <input class="form-control" type="text" name="user" placeholder="Enter your Username">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" name="pass" placeholder="Enter your Password">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" name="repass" placeholder="Confirm your Password">
                                </div>
                                <button class="btn signin" type="submit">SignUp</button>

                                <span class="signup">or <a href="Login.jsp">Back to login</a></span>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>