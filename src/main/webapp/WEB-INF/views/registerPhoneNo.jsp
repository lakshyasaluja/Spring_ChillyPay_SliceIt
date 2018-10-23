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
				<p class="h4">please enter your mobile number below and we'll
					send you a verification code in the next 20 seconds.</p>
			</div>
			<div class="col-md-12">
			
				<form action="registerVerificationCode" method="POST"
					id="phone-number-form">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-phone"
							style="font-size: 24px;"></i></span>
							 <input type="number" class="form-control input-lg" id="phone-number"
							name="phonenumber" placeholder="Phone Number">
					</div>
					<span class="text-danger" id="phone-number-error"></span> <br /> 
					<input type="submit" class="btn btn-lg btn-block"
						style="background-color: #fea500;" />
				</form>

			</div>

		</div>

	</div>
</div>


<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include registerPhoneNoValidation.js for validating registerPhoneNoValidation Form-->
<script
	src="${pageContext.request.contextPath}/resources/validationjs/registerPhoneNoValidation.js">
	
</script>