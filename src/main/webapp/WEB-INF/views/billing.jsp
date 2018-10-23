<!-- Include JSTL TAG library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>

<!-- Include subheader -->
<%@ include file="/WEB-INF/views/shared/subheader.jsp"%>


<br />
<br />
<div class="container-fluid">
	<div class="row well">
		<div class="col-md-3" style="padding: 2px 2px; border-radius: 5px;">
			<p>
				<i class="fa fa-credit-card"
					style="color: #008001; font-size: 26px;"></i><b
					style="font-size: 26px;"> Billing</b> <a href="#cardDetailsModal"
					class="btn btn-link" data-toggle="modal">add payment method </a>
			</p>
		</div>
		<div class="col-md-9">
			<c:if test="${!(empty cardInfo)}">
				<div class="alert alert-info">
					<strong>Info!</strong>${cardInfo}
				</div>
			</c:if>
		</div>
		<div class="col-md-12">
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>NUMBER</th>
							<th>TYPE</th>
							<th>EXPIRY</th>
							<th>ASSOCIATED ORDERS</th>
							<th>PREFRERED CARD</th>
							<th>ACTION</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty billings}">
								<tr>
									<td colspan="6" class="text-center h3 text-success">There
										is No Card Detials</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${billings}" var="billing">
									<tr>
										<td>${billing.value.number}</td>
										<td><i class="fa fa-cc-visa"
											style="font-size: 30px; color: blue;"></i></td>
										<td>${billing.value.expiry}</td>
										<td>${billing.value.associatedOrder}</td>
										<c:choose>
											<c:when test="${billing.value.prefreredCard=='yes' }">
												<td><i class="fa fa-check-circle fa-2x"
													style="color: green;"></i></td>
											</c:when>
											<c:otherwise>
												<td><a href="makePreferredCard/${billing.value.number}"
													class="btn btn-success">Make Preferred</a></td>
											</c:otherwise>
										</c:choose>
										<td><a class="btn btn-danger btn-block"
											onClick="deleteCard('${billing.value.number}')"> <i
												class="fa fa-trash fa-lg"></i>
										</a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>





<div id="cardDetailsModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header bg-success">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">ENTER NEW CARD DETAILS</h4>
			</div>
			<div class="modal-body">
				<div class="alert alert-danger" id="error-box"
					style="display: none;">
					<strong id="add-card-error"></strong>
				</div>
				<form action="addNewCard" method="GET" id="add-card-form">
					<div class="form-group">
						<input type="text" class="form-control" id="firstname"
							placeholder="FIRSTNAME" name="firstname">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="lastname"
							placeholder="LASTNAME" name="lastname">
					</div>

					<div class="form-group">
						<input type="number" class="form-control" id="cardnumber"
							name="cardNumber" placeholder="CARD NUMBER">
					</div>

					<div class="form-group">
						<input type="date" class="form-control" id="expirydate"
							name="expirydate" placeholder="EXPIRY DATE (MM/YY)">
					</div>

					<div class="form-group">
						<input type="password" maxlength="3" class="form-control" id="cvv"
							name="cvv" placeholder="SECURITY CODE (CVV)">
					</div>
			</div>
			<div class="modal-footer">
				<input type="submit" class="btn btn-success btn-block"
					value="ADD CARD">
			</div>
			</form>
		</div>

	</div>
</div>

<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- Include billingvalidation.js for validating addNewCard Form-->
<script
	src="${pageContext.request.contextPath}/resources/validationjs/billingValidation.js">
	
</script>