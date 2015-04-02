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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- Optional theme -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/flatly/bootstrap.min.css">-->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/css/jasny-bootstrap.min.css">
	
 <!-- Latest compiled and minified JavaScript -->
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jasny-bootstrap/3.1.3/js/jasny-bootstrap.min.js"></script>
<g:layoutHead />
<g:javascript library="application" />
<r:layoutResources />
</head>
<body>
	<div class="navmenu navmenu-default navmenu-fixed-left offcanvas" style="margin-top: 60px;">
	 	<div class="form" style="margin: 10px;">
	 		<h3>Filters</h3>
  			<div class="form-group">
			    <label for="category" class="control-label">Category</label>
			    <g:select name="category" class="form-control input-sm" from="${ContractorPortal.OpenJobs.constraints.category.inList }"/>
			  </div>
			  <div class="form-group">
			    <label for="dateIssued" class="control-label">Date Job Issued</label>
			    <input type="date" class="form-control input-sm" id="dateIssued" name="dateIssued" style="width:60%">
			  </div>
			</div>
    	</div>
	<sec:ifLoggedIn>
	<div class="row">
		<div class="nav navbar-default navbar-fixed-top">
		<ul class="nav navbar-nav navbar-left">
			<li>
				<img src="${resource(dir: 'images', file: 'PMMSlogo.png')}" height="60px" style="margin-left: 20px; padding: 5px;" />
			</li>
			<li><button type="button" class="btn btn-sm btn-default navbar-btn" data-toggle="offcanvas" data-target=".navmenu">Filters</button></li>
		</ul>
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
			  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i>&nbsp;
				 <sec:loggedInUserInfo field="username"/><span class="caret"></span>
			  </a>
			  <ul class="dropdown-menu" role="menu">
				<li class="text-center">
				<g:form controller="logout" action="index">
					<button type="submit" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-log-out"></span> Logout</button>
				</g:form>
				</li>
			  </ul>
			  </li>
		  </sec:ifLoggedIn>
		   </ul>
		</div>
		</div>
	</sec:ifLoggedIn>
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
