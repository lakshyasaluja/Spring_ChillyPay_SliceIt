<!-- Include JSTL TAG library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>

<div class="container-fluid">
	<div class="row well">
		<div class="col-md-12" style="padding: 2px 2px; border-radius: 5px;">
			<p style="font-size: 26px;">
				<i class="fa fa-refresh" style="color: #008001;"></i><b> Payment
					Schedule</b>
			</p>
		</div>
		<div class="col-md-12">
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<thead>
						<tr class="success">
							<th>DUE DATE</th>
							<th>ORDER NO.</th>
							<th>MERCHANT</th>
							<th>AMOUNT DUE</th>
							<th>ACTION</th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${empty payments}">
								<p>There Is No Payment To Show</p>
							</c:when>
							<c:otherwise>
								<c:forEach items="${payments}" var="payment">
									<tr>
										<td>${payment.dueDate}</td>
										<td>${payment.orderNo}</td>
										<td>${payment.merchant}</td>
										<td><i class="fa fa-gbp"></i> ${payment.amountDue}.00</td>
										<td><a class="btn btn-success">PAY NOW</a></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</tbody>
					<thead>
						<tr class="success">
							<th>DUE DATE</th>
							<th>ORDER NO.</th>
							<th>MERCHANT</th>
							<th>AMOUNT DUE</th>
							<th>ACTION</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>


<!-- Include footer for ALL Js File -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>