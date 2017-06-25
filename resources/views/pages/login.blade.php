<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> POSManager | Developed by CKT Dev </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="{{ asset('/css/vendor.css', $IsSecured['ssl']) }}">
    <link rel="stylesheet" href="{{ asset('/css/app.css', $IsSecured['ssl']) }}">
</head>
<body>
<div class="auth">
    <div class="auth-container">
        <div class="card">
            <header class="auth-header">
                <h1 class="auth-title"> POSManager </h1>
            </header>
            <div class="auth-content">
                <p class="text-xs-center">LOGIN TO CONTINUE</p>
                <form id="login-form" action="/index.html" method="GET" novalidate="">
                    <div class="form-group"> <label for="username">Username</label> <input type="email" class="form-control underlined" name="username" id="username" placeholder="Your email address" required> </div>
                    <div class="form-group"> <label for="password">Password</label> <input type="password" class="form-control underlined" name="password" id="password" placeholder="Your password" required> </div>
                    <div class="form-group"> <label for="remember">
                            <input class="checkbox" id="remember" type="checkbox">
                            <span>Remember me</span>
                        </label> <a href="reset.html" class="forgot-btn pull-right">Forgot password?</a> </div>
                    <div class="form-group"> <button type="submit" class="btn btn-block btn-primary">Login</button> </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Reference block for JS -->
<div class="ref" id="ref">
    <div class="color-primary"></div>
    <div class="chart">
        <div class="color-primary"></div>
        <div class="color-secondary"></div>
    </div>
</div>
<script src="{{ asset('/js/vendor.js', $IsSecured['ssl']) }}"></script>
<script src="{{ asset('/js/app.js', $IsSecured['ssl']) }}"></script>
</body>
</html>