<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reap</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="icon" href="images/favicon.ico">
<link type="text/css" rel="stylesheet"
	href="ReapCSS/ReapHeader-style.css" />
<link type="text/css" rel="stylesheet"
	href="ReapCSS/ReapBadge-Style.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

</head>
<body>
	<%@ include file="ReapHeader.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#badge").addClass("active");
		});
	</script>

	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="redeempoint">
				<div class="col-md-4">
					<div class="box-content">
						<div class="panel">
							<div class="panel-heading">
								<img src="images/ico-badge-hover.png"> <strong>badges
									& points</strong>
							</div>
							<div class="panel-body">
								<div class="col-md-7">
									<div class="col-md-3">
										<div class="badge-content-left">
											<img src="images/fetchUserImage.jpg" class="img-rounded">
										</div>
									</div>
									<div class="col-md-9">
										<div id="tab">
											<strong>Prashant Gupta</strong>
											<table border="0" width="100%">
												<tr>
													<th><img src="images/ico-badge-orange.png"></th>
													<th><img src="images/ico-badge-grey.png"></th>
													<th><img src="images/ico-badge-brown.png"></th>
												</tr>
												<tr>
													<td>0</td>
													<td>0</td>
													<td>0</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
								<div class="col-md-5 customPoint">
									<div class="points">
										<img src="images/points.png">
										<div class="h1point availablePoints">
											<h1>
												0 <small>pts</small>
											</h1>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<a href="" class="btn-redeem">Redeem Points</a>
				</div>
				<div class="col-md-8">
					<div class="box-content">
						<div class="head-bar no-bg">
							<div class="head-inputs">
								<div class="row">
									<div class="col-lg-12 col-md-12">
										<div class="nav-outer">
											<span class="custom-value-text"> All (0) </span>

											<ul class="nav nav-tabs trending open" role="tablist">
												<li role="presentation" class="active"><a href=""
													role="tab"> All (0) </a></li>
												<li role="presentation" class=""><a href="" role="tab">
														Badges Shared (0) </a></li>
												<li role="presentation" class=""><a href="" role="tab">
														Badges Received (0) </a></li>

												<li role="presentation" class=""><a href="" role="tab">
														Badges History </a></li>
												<li role="presentation" class=""><a href="" role="tab">Points
														redeemed</a></li>
											</ul>
											<span class="trending-trigger"><span></span><span></span><span></span></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="content border-full">
						<div class="col-lg-12">
							<div class="pannelouter">
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<div class="row">No data found</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
