<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
<g:layoutHead />
<g:javascript library="application" />
<r:layoutResources />
</head>
<body>
	<div class="row">
	<div class="navbar navbar-default navbar-fixed-top" role="navigation">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <img class="navbar-brand" src="${resource (dir: 'images', file: 'PMMSlogo.png') }" style="width: 130px; padding: 5px;"/>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right" style="margin-right: 20px;">
		    <sec:ifNotLoggedIn>
			<li class="dropdown">
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <strong class="caret"></strong></a>
			  <div class="dropdown-menu" style="padding: 15px; width: 275px;">
				<g:form class="form" role="form" url="PMMS/j_spring_security_check" method="POST">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" placeholder="Username" class="form-control" name='j_username' id='username'>
					</div>
					</div>
					<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input type="password" placeholder="Password" class="form-control" name='j_password' id='password'>
					</div>
					</div>
					<button type="submit" class="btn btn-success btn-sm"><span class="fa fa-sign-in"></span>  Sign in</button>
					<g:link class="btn btn-primary btn-sm"><span class="fa fa-question"></span>  Reset Password</g:link>
				</g:form>
			  </div>
		  </sec:ifNotLoggedIn>
		  <sec:ifLoggedIn>
			<li>
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user fa-lg fa-fw"></i>
				<span class="hidden-sm"><sec:loggedInUserInfo field="username"/></span> <span class="caret"></span>
			  </a>
			  <ul class="dropdown-menu" role="menu">
				<li class="text-center">
				<g:form controller="logout" action="index">
					<button type="submit" class="btn btn-danger btn-sm"><span class="fa fa-sign-out fa-fw fa-lg"></span> Logout</button>
				</g:form>
				</li>
			  </ul>
			  </li>
		  </sec:ifLoggedIn>
		   </ul>
        </div><!--/.nav-collapse -->
     
    </div>
	<div class="container">
		<g:layoutBody />
	<nav class="navbar navbar-inverse navbar-fixed-bottom" style="font-size: 0.9em; min-height: 40px;">
		<div class="col-xs-2"></div>
		  <div class="col-xs-8 text-center">
		  	<span style="color: #fff;">PMMS Contractor Portal &#169; 2015</span>
		  </div>
		  <div class="col-xs-2 text-right">
		  	<span style="color: #fff;">Version: 1.0.0</span>
		  </div>
		</nav>
	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<r:layoutResources />
	</div>
</body>
</html>
