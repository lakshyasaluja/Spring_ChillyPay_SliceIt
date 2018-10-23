<!-- Include resources like(bootstrap and other CSS) -->
<%@ include file="/WEB-INF/views/shared/resources.jsp"%>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="" style="font-size: 35px;">SliceIt</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="dashboard">Home</a></li>
				<li><a href="paymentSchedule">Payment Schedule</a></li>
				<li><a href="myAccount">My Account</a></li>
				<li><a>In-Store</a></li>
				<li><a>Contact</a></li>
				<li><a href="loginEmail">Logout</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>


</body>
</html>