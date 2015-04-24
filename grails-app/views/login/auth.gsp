<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap core CSS -->
   <g:javascript library="application"/>
   <r:layoutResources/>
  </head>

  <body style="background-color: #efefef;">
 	
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-8 center-block" style="float:none;">
   		 <img src="${resource (dir: 'images', file: 'PMMSlogo.png') }" style="width: 100%; margin-bottom: 25px; margin-top: 25px;"/>
   		 <div class="bg-danger" style="padding: 20px 40px 40px 40px; float:none; border-radius: 6px;">
   		  <p class="text-center" style="color: #fff; font-size:36px; font-weight: 600;">Contractor Portal</hp>
        <g:form class="form" role="form" url="${postUrl}" method="POST">
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
					<div class="text-center">
					<button type="submit" class="btn btn-success btn-sm"><span class="fa fa-sign-in"></span>  Sign in</button>
					<g:link class="btn btn-default btn-sm"><span class="fa fa-question"></span>  Reset Password</g:link>
					</div>
				</g:form>
			</div>
		</div>
	<r:layoutResources/>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  </body>
</html>