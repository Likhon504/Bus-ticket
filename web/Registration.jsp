<%@ include file="headerIndex.jsp" %>
<div class="signpage">
	

	<form class="register_form" action="SignUpController" method="post">
		
		<div class="row">
			<div class="col-xs-12 col-sm-12">
				<div class="rs_form_box">
					<h3 class="form_section_title">
						Personal Information
					</h3>
					<div class="input-group">
						<label>Username</label>
						<input type="text" name="username" class="form-controller">
					</div>
					<div class="input-group">
						<label>Email</label>
						<input type="email" name="email" class="form-controller">
					</div>

					<div class="input-group">
						<label>Password*</label>
						<input type="password" name="password" class="form-controller">
					</div>

					<div class="input-group">
						<label>Confirm Password*</label>
						<input type="password" name="password_con" class="form-controller">
					</div>

				</div>

			</div>

			<div class="col-xs-12 col-sm-12 text-center">
				<div class="rs_btn_group">
					<button class="btn btn-default pull-left" name="submit" type="submit">Register</button>
					<a href="LogInn.jsp" class="btn btn-default">Login here.</a>
				</div>
			</div>
		</div>
	</form>
</div>
<%@ include file="footer.jsp" %>