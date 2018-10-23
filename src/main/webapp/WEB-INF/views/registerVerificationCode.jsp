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
					src="${pageContext.request.contextPath}/resources/img/sliceit_logo.png"
					style="width: 100%; height: 20%;" />
			</div>
			<div class="col-md-12">
				<p class="h4">Enter The 6-digit verification code sent to your
					mobile number 0404870999.</p>
			</div>
			<div class="col-md-12">
			
			<!--  registerVerificationCodeValidation Form-->
				<form action="dashboard" method="POST" id="verification-code-form">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"
							style="font-size: 24px;"></i></span> 
							<input type="number" class="form-control input-lg" placeholder="Verification code"
							 name="verificationcode" id="verification-code">
					</div>
					<span class="text-danger" id="verification-code-error"></span> <br />
					<input type="submit" class="btn btn-lg btn-block"
						style="background-color: #fea500;" />
				</form>
				<br /> 
				<a href="#" style="color: black;">Didn't Receive the code? </a><br />
				<a href="#" style="color: black;"><u>Resend code</u></a>
				 or
				<a href="#" style="color: black;"><u>Change MobileNumber</u></a>
			</div>

		</div>

	</div>
</div>

<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include registerVerificationCodeValidation.js for validating registerVerificationCodeValidation Form-->
<script
	src="${pageContext.request.contextPath}/resources/validationjs/registerVerificationCodeValidation.js">
	
</script>