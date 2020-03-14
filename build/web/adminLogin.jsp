<%@ include file="headerIndex.jsp" %>
<div class="signpage">
	<form class="register_form form_login" action="AdminLogIn" method="post">
		
		<div class="row">
			<div class="col-xs-12 col-sm-8">
			<div class="owl-carousel home_page_slider">
			  <div class="item">
			  	<div class="rs_single_slide" style="background-image:url(images/bus5.jpg)">
			  	</div>
			  </div>
			  <div  class="item">
			  	<div class="rs_single_slide" style="background-image:url(images/bus4.jpg)">
			  	</div>
			  </div>
			  <div  class="item">
			  	<div class="rs_single_slide" style="background-image:url(images/bus2.jpg)">
			  	</div>
			  </div>
			  <div  class="item">
			  	<div class="rs_single_slide" style="background-image:url(images/bus1.jpg)">
			  	</div>
			  	
			  </div>
			</div>
			</div>
			<div class="col-xs-12 col-sm-4">
				
				<div class="alert alert-danger"><p></p></div>
		
				<div class="rs_form_box">
					<h3 class="form_section_title">
						Admin Login Here 
					</h3>
					<div class="input-group">
						<label>Username</label>
						<input type="text" name="username" class="form-controller">
					</div>
					<div class="input-group">
						<label>Password</label>
						<input type="password" name="password" class="form-controller">
					</div>
				</div>
				<div class="text-center">
					<div class="rs_btn_group">
						<button class="btn btn-default" name="submit" type="submit">Login</button>
<!--						<a href="" class="btn btn-default">Register</a>-->
					</div>
				</div>
			</div>
			
		</div>
	</form>
</div>
<%@ include file="footer.jsp" %>