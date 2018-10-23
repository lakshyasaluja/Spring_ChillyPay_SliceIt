<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>

<!-- Main content -->
<section class="invoice">
	<!-- title row -->
	<div class="row">
		<div class="col-xs-12">
			<h2 class="page-header">
				<i class="fa fa-globe"></i> SliceIT, Inc. <small class="pull-right">Date:
					2/10/2018</small>
			</h2>
		</div>
		<!-- /.col -->
	</div>
	<!-- info row -->
	<div class="row invoice-info">
		<!-- /.col -->
		<div class="col-sm-3 invoice-col">
			<h4>Order ID : 454677</h4>
			<table class="table">
				<tr>
					<td colspan="2"><b>Order Summary</b></td>
				</tr>
				<tr>
					<td>Order Total</td>
					<td><i class="fa fa-gbp">135.00 GBP</i></td>
				</tr>
				<tr>
					<td>Total Paid</td>
					<td><i class="fa fa-gbp">135.00 GBP</i></td>
				</tr>
				<tr class="success">
					<td>Total Owing</td>
					<td><i class="fa fa-gbp">0.00 GBP</i></td>
				</tr>
			</table>
		</div>
		<!-- /.col -->

	</div>
	<!-- /.row -->
	<br />
	<!-- Table row -->
	<div class="row">
		<div class="col-xs-12 table-responsive">
			<table class="table table-striped">
				<thead>
					<tr class="danger active">
						<th>DATE</th>
						<th>DUE IN</th>
						<th>PAYMENT METHOD</th>
						<th>AMOUNT</th>
						<th>STATUS</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>Sun,22/07/2018</td>
						<td>Paid</td>
						<td><i class="fa fa-cc-visa fa-2x" style="color: blue;"></i>
							**23235</td>
						<td><i class="fa fa-gbp"></i> 56.00 GBP</td>
						<td class="text-success">PAID MANUALLY 22/07/2018</td>
					</tr>

					<tr>
						<td>Sun,22/08/2018</td>
						<td>Paid</td>
						<td><i class="fa fa-cc-visa fa-2x" style="color: blue;"></i>
							**23235</td>
						<td><i class="fa fa-gbp"></i> 56.00 GBP</td>
						<td class="text-success">PAID MANUALLY 22/08/2018</td>
					</tr>
					<tr>
						<td>Sun,22/08/2018</td>
						<td>Paid</td>
						<td><i class="fa fa-cc-visa fa-2x" style="color: blue;"></i>
							**23235</td>
						<td><i class="fa fa-gbp"></i> 56.00 GBP</td>
						<td class="text-success">PAID MANUALLY 22/08/2018</td>
					</tr>
					<tr>
						<td>Sun,22/08/2018</td>
						<td>Paid</td>
						<td><i class="fa fa-cc-visa fa-2x" style="color: blue;"></i>
							**23235</td>
						<td><i class="fa fa-gbp"></i> 56.00 GBP</td>
						<td class="text-success">PAID MANUALLY 22/08/2018</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-md-12">
			<h3 class="bg-success" style="padding: 5px;">Product Infomation</h3>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b> Iphone xs max, 256 gb with
				facetime</b>
		</div>
	</div>
	<hr />
	<!-- info row -->
	<div class="row invoice-info">
		<div class="col-sm-3 invoice-col">
			<strong>Merchant Info</strong>
			<address>
				Apple Inc.<br> 795 Folsom Ave, Suite 600<br> San
				Francisco, CA 94107<br> Phone: (804) 123-5432<br> Email:
				info@apple.com
			</address>
		</div>

		<div class="col-sm-3 invoice-col">
			<strong>Store Info.</strong>
			<address>
				Apple Store<br> i-thum<br> noida sector-62<br> Phone:
				(555) 539-1037<br> Email: noidastore@apple.com
			</address>
		</div>
		<!-- /.col -->
		<!-- /.col -->
		<div class="col-sm-3 invoice-col">
			<strong>Customer Info.</strong>
			<address>
				Lakshya<br> f-21 <br> yamuna vihar<br> Phone: (555)
				539-1037<br> Email: lakshya.saluja@obolustech.com
			</address>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->


	<div class="row no-print">
		<div class="col-xs-12">
			<a target="_blank" class="btn btn-default pull-right btn-block"><i
				class="fa fa-print"></i> Print</a>
		</div>
	</div>
</section>
