<!-- Include header for navigation -->
<%@ include file="/WEB-INF/views/shared/header.jsp"%>


    <!-- Main content -->
    <section class="invoice">
      <!-- title row -->
      <div class="row">
        <div class="col-xs-12">
          <h2 class="page-header">
            <i class="fa fa-globe"></i> SliceIT, Inc.
            <small class="pull-right">Date: 2/10/2018</small>
          </h2>
        </div>
        <!-- /.col -->
      </div>
	<!-- info row -->
	<div class="row invoice-info">
		<div class="col-sm-4 invoice-col">
			<strong>Merchant Info</strong>
			<address>
				Apple Inc.<br> 795 Folsom Ave, Suite 600<br> San
				Francisco, CA 94107<br> Phone: (804) 123-5432<br> Email:
				info@apple.com
			</address>
		</div>

		<div class="col-sm-4 invoice-col">
			<strong>Store Info.</strong>
			<address>
				Apple Store<br> i-thum<br> noida sector-62<br> Phone:
				(555) 539-1037<br> Email: noidastore@apple.com
			</address>
		</div>
		<!-- /.col -->
		<!-- /.col -->
		<div class="col-sm-4 invoice-col">
			<strong>Customer Info.</strong>
			<address>
				Lakshya<br> f-21 <br> yamuna vihar<br> Phone: (555)
				539-1037<br> Email: lakshya.saluja@obolustech.com
			</address>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->

      <!-- Table row -->
      <div class="row">
        <div class="col-xs-12 table-responsive">
          <table class="table table-striped">
            <thead>
            <tr class="success">
              <th>Qty</th>
              <th>Product</th>
              <th>Serial #</th>
              <th>Description</th>
              <th>Subtotal</th>
            </tr>
            </thead>
            <tbody>
            
            <tr>
              <td>1</td>
              <td>Call of Duty</td>
              <td>455-981-221</td>
              <td>El snort testosterone trophy driving gloves handsome</td>
              <td>$64.50</td>
            </tr>
            
            </tbody>
          </table>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <div class="row">
        <!-- accepted payments column -->
        <div class="col-xs-6">
          <p class="lead">Payment Methods:</p>
          <img src="${pageContext.request.contextPath}/resources/img/visa.png" alt="Visa">
          <img src="${pageContext.request.contextPath}/resources/img/mastercard.png" alt="Mastercard">
          <img src="${pageContext.request.contextPath}/resources/img/american-express.png" alt="American Express">
          <img src="${pageContext.request.contextPath}/resources/img/paypal2.png" alt="Paypal">

          <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
            Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg
            dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
          </p>
        </div>
        <!-- /.col -->
        <div class="col-xs-5 col-xs-offset-1">
          <p class="lead text-center">Amount Due 21/2/2018</p>
          <div class="table-responsive">
            <table class="table">
              <tr>
                <th style="width:50%">Subtotal:</th>
                <td>$250.30</td>
               </tr>
              <tr>
                <th>Tax (9.3%)</th>
                <td>$10.34</td>
              </tr>
              <tr>
                <th>Shipping:</th>
                <td>$5.80</td>
              </tr>
              <tr class="success">
                <th>Total:</th>
                <td>$265.24</td>
              </tr>
            </table>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- this row will not appear when printing -->
      <div class="row no-print">
        <div class="col-xs-12">
          <a href="#" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
          <button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
          </button>
        </div>
      </div>
    </section>
    <!-- /.content -->
    <div class="clearfix"></div>
  </div>
  <!-- /.content-wrapper -->


