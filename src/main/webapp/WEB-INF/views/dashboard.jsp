<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>
<!-- Include JSTL TAG library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="box box-warning box-solid">
				<div class="box-header with-border">
					<h3 class="box-title text-center">Amount Due</h3>
				</div>
				<!-- /.box-header -->
				<div class="box-body" style="padding: 0px;">

					<!-- Custom Tabs -->

					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#tab_1" data-toggle="tab">15
								Days</a></li>
						<li><a href="#tab_2" data-toggle="tab">30 Days</a></li>
						<li><a href="#tab_3" data-toggle="tab">60 Days</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_1">
							<h1 class="text-center">
								<i class="fa fa-gbp"></i> 12,000.00 GBP
							</h1>
						</div>
						<!-- /.tab-pane -->
						<div class="tab-pane" id="tab_2">
							<h1 class="text-center">
								<i class="fa fa-gbp"></i> 24,000.00 GBP
							</h1>
						</div>
						<!-- /.tab-pane -->
						<div class="tab-pane" id="tab_3">
							<h1 class="text-center">
								<i class="fa fa-gbp"></i> 30,000.00 GBP
							</h1>
						</div>
						<!-- /.tab-pane -->
					</div>
					<!-- /.tab-content -->
					<!-- nav-tabs-custom -->
				</div>
				<!-- /.box-body -->
			</div>
			<!-- /.box -->
		</div>
		<!-- /.col -->
	</div>
</div>



<div class="container-fluid">
	<div class="row well">
		<div class="col-md-12" style="padding: 2px 2px; border-radius: 5px;">
			<p style="font-size: 26px;">
				<i class="fa fa-shopping-cart" style="color: #008001;"></i><b><u>ORDERS</u></b>
			</p>
		</div>
		<div class="col-md-12">
			<div class="table-responsive">
				<table class="table table-striped table-hover" id="order-table">
					<thead>
						<tr class="success">
							<th>DUE DATE</th>
							<th>ORDER NO.</th>
							<th>MERCHANT</th>
							<th>ORDER AMOUNT</th>
							<th>AMOUNT OWING</th>
							<th>ACTION</th>
						</tr>
					</thead>
					<tbody>

						<c:choose>
							<c:when test="${empty orders}">
								<p>There are no Orders in system yet.</p>
							</c:when>
							<c:otherwise>
								<c:forEach items="${orders}" var="order">
									<tr>
										<td>${order.dueDate}</td>
										<td>${order.orderNo}</td>
										<td>${order.merchant}</td>
										<td><i class="fa fa-gbp "></i> ${order.orderAmount}.00</td>
										<td><i class="fa fa-gbp "></i> ${order.amountOwing}.00</td>
										<td><a href="orderPage" class="btn btn-success"><i
												class="fa fa-eye" style="font-size: 20px;"></i></a></td>
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
							<th>ORDER AMOUNT</th>
							<th>AMOUNT OWING</th>
							<th>ACTION</th>
						</tr>
					</thead>
				</table>
			</div>
		</div>
	</div>
</div>


<!-- Include footer -->
<%@ include file="/WEB-INF/views/shared/footer.jsp"%>

<!-- datatable plugin for searcing or sorting in table -->
<script>
	$(document).ready(function() {
		$('#order-table').DataTable( {
			"lengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]]
	});
	});
</script>