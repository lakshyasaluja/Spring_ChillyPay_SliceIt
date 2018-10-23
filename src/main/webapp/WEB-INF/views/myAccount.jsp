
<!-- include taglib-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>

<!-- Include subheader for navigation -->
<%@ include file="/WEB-INF/views/shared/subheader.jsp"%>

<br />
<div class="container-fluid">
	<div class="row well">
		<div class="col-md-12" style="border-bottom: 1px solid grey;">
			<h3>
				<b><i class="fa fa-user fa-2x"></i> PROFILE</b>
			</h3>
		</div>
		<br /> <br /> <br />
		<div class="row">
			<div class="col-md-3">
				<h5>
					<b>ID VERIFICATION :</b>
				</h5>
			</div>
			<div class="col-md-6">
				Verified <i class="fa fa-check-circle"></i>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h5>
					<b>Contact(Login) Email Address :</b>
				</h5>
			</div>
			<div class="col-md-4">
				<div id="userEmailBox">
					<span>${user.emailAddress}</span> &nbsp;&nbsp; <a id="updateEmailBtn"><u>change</u></a>
				</div>
				<input type="email" class="form-control input-sm" id="userNewEmailField" style="display:none;" value="${user.emailAddress}" required>
				<span class="text-danger" id="email-error"></span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h5>
					<b>Given Name :</b>
				</h5>
			</div>
			<div class="col-md-6">${user.givenName}</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h5>
					<b>Middle Name(s):</b>
				</h5>
			</div>
			<div class="col-md-6">${user.middleName}</div>
		</div>
		<div class="row">

			<div class="col-md-3">
				<h5>
					<b>Surename:</b>
				</h5>
			</div>
			<div class="col-md-6">${user.surename}</div>
		</div>
		<div class="row">

			<div class="col-md-3">
				<h5>
					<b>Mobile Number:</b>
				</h5>
			</div>
			<div class="col-md-4">
				<div id="userMobileBox">
					<span>${user.mobileNumber}</span> &nbsp;&nbsp; <a id="updateMobileBtn"><u>change</u></a>
				</div>
				<input type="number" class="form-control input-sm" style="display: none;" id="userNewMobileField" value="${user.mobileNumber}" required>
				<span class="text-danger" id="mobile-error"></span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<h5>
					<b>Contact Address:</b>
				</h5>
			</div>
			<div class="col-md-4">
				<form>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-home"></i></span>
						<input type="text" class="form-control"
							placeholder="Address Line 1" value="${user.address1}" required>
					</div>

					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-home"></i></span>
						<input type="text" class="  form-control" value="${user.address2}"
							placeholder="Address Line 2" required>
					</div>


					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-home"></i></span>
						<input type="text" class="form-control" value="${user.address3}"
							placeholder="Address Line 3" required>
					</div>
					<div class="row">
						<div class="col-md-6">

							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-home"></i></span>
								<input type="number" class="form-control" placeholder="Pincode"
								value="${user.pincode}" 
									required>
							</div>
						</div>
						<div class="col-md-6">

							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-home"></i></span>
								<input type="text" class="form-control" value="${user.houseNo}"
									placeholder="House No." required>
							</div>
						</div>
					</div>

					<br />
					<button type="submit" class="btn btn-success">Update</button>
				</form>
			</div>
		</div>
		<div class="col-md-12">
			<h4>
				<b>Security:</b>
			</h4>
		</div>


		<div class="col-md-3">
			<h5>
				<b>Password:</b>
			</h5>
		</div>
		<div class="col-md-4">
			<a id="changePasswordBtn"><u>change</u></a> 
			<div id="current-password-box">
			 <input type="password" class="form-control input-sm" placeholder="Enter Your Current Password" style="display:none;" id="currentPasswordField" required/>
			 <span class="text-danger" id="current-password-error"></span>
			</div>
			<div id="new-password-box">		
			 <input type="password" class="form-control input-sm" placeholder="Enter New Password" style="display:none;" id="newPasswordField" required /> 
			 <span  class="text-danger" id="new-password-error"></span>
			</div>
		</div>

	</div>
</div>


<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include myAccountValidation.js for Changing User Information Through 
also require footer.jsp becoz it contain Jquery Plugin-->
<script
	src="${pageContext.request.contextPath}/resources/validationjs/myAccountValidation.js">
	
</script>