<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Include resources like(bootstrap and other CSS) -->
<%@ include file="/WEB-INF/views/shared/resources.jsp"%>
<div class="container">
	<div class="row">
		<br />
		<div
			class="col-md-5 col-md-offset-3 col-xs-9 col-xs-offset-2 col-sm-7 col-sm-offset-3"
			style="padding: 10px 20px; border-radius: 5px;">
			<div class="col-md-8 col-md-offset-2">
				<img
					src="${pageContext.request.contextPath }/resources/img/sliceit_logo.png"
					style="width: 100%; height: 20%;" />
			</div>
			<div class="col-md-12">
				<p class="h4">
					Welcome Back! <br /> Enter your Password to log in to SliceIt .
				</p>
			</div>
			<div class="col-md-12">
				<form action="dashboard" method="POST" id="login-password-form">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"
							style="font-size: 24px;"></i></span> <input type="password"
							class="form-control input-lg" id="password"
							placeholder="Password" required>
					</div>
					<span class="text-danger" id="login-password-error"></span> <br />
					<input type="submit" class="btn btn-lg btn-block"
						style="background-color: #fea500;" value="LOGIN" />
				</form>
				<br /> <a href="#" style="color: black;"><u>Forget Password?</u></a>
			</div>

		</div>

	</div>
</div>

<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include LoginPasswordValidation.js for validating login password Form-->

<script
	src="${pageContext.request.contextPath}/resources/validationjs/loginPasswordValidation.js">
	
</script>