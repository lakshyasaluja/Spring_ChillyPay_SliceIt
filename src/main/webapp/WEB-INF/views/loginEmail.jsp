<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Include resources like(bootstrap and other CSS) -->
<%@ include file="/WEB-INF/views/shared/resources.jsp"%>

<title>LOGIN PAGE</title>
<div class="container">
	<div class="row">
		<br />
		<div
			class="col-md-5 col-md-offset-3 col-xs-9 col-xs-offset-2 col-sm-7 col-sm-offset-3"
			style="padding: 10px 20px; border-radius: 5px;">
			<div class="col-md-8 col-md-offset-2">
				<img
					src="${pageContext.request.contextPath}/resources/img/sliceit_logo.png"
					style="width: 100%; height: 20%;" />
			</div>
			<div class="col-md-12">
				<p class="h4">Enter your email to log in to SliceIt or to create
					a new account.</p>
			</div>
			<div class="col-md-12">
				<form action="loginPassword" method="POST" id="login-email-form">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-envelope" style="font-size: 24px;"></i></span>
						<input type="email" class="form-control input-lg" id="email"
							placeholder="Email Address">
					</div>
					<span class="text-danger" id="login-email-error"> </span> <br /> <input
						type="submit" class="btn btn-lg btn-block"
						style="background-color: #fea500;" value="Continue">
				</form>
				<br /> <a href="registerEmail" style="color: black;"><u>REGISTER
						HERE</u></a>
			</div>

		</div>

	</div>
</div>

<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include LoginEmailValidation.js for validating login Email Form-->
<script
	src="${pageContext.request.contextPath}/resources/validationjs/loginEmailValidation.js">
	
</script>