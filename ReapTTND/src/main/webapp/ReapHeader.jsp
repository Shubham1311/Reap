<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Reap</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="header">
		<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div id="logos">
					<a href="ReapDashboard.jsp"> <img id="reapLogo"
						src="images/header-reap.png" alt="Smiley face"></a>
				</div>
			</div>
			<div class="custom-menu">
				<div class="collapse navbar-collapse" id="myNavbar">
					<img id="titleLogo" src="images/header-logo.png" alt="Smiley face">
					<ul class="nav navbar-nav navbar-right">
						<li id="dashboard" class="buttons"><a
							href="ReapDashboard.jsp"> <img src="images/ico-dashboard.png" />
								<img src="images/ico-dashboard-hover.png" class="hover" />
								Dashboard
						</a></li>

						<li id="badge" class="buttons"><a href="ReapBadge.jsp"> <img
								src="images/ico-badge.png" class="hov" /> <img
								src="images/ico-badge-hover.png" class="hover" /> Badges
						</a></li>

						<li class="buttons"><a href="#"> <img
								src="images/ico-dashboard.png" /> <img
								src="images/ico-dashboard-hover.png" class="hover" />
								Certificate
						</a></li>

						<li class="buttons "><a href="#"> <img
								src="images/ico-idea.png" /> <img
								src="images/ico-idea-hover.png" class="hover" /> Idea
						</a></li>

						<li class="dropdown notifications-menu"><a href=""
							class="dropdown-toggle ico" data-toggle="dropdown"
							id="notificationCount" onclick="" aria-expanded="false"> <img
								src="images/ico-bell.png">
						</a>
							<ul class="dropdown-menu">
								<li>
									<ul class="menu">
										<li><a>You have no unread notifications.</a></li>
									</ul>
								</li>
								<li class="footer"><a href="">View all</a></li>
							</ul></li>

						<li class="dropdown user user-menu"><a href=""
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img class="user-image"
								alt="User Image" src="images/fetchUserImage.jpg">
						</a>
							<ul class="dropdown-menu profile">
								<h3>Your Profile</h3>
								<li class="user-header"><img class="img-rounded"
									alt="User Image" src="images/fetchUserImage.jpg"></li>
								<li class="user-body">
									<div class="row">
										<div class="col-lg-12 col-md-12">
											<div class="col-lg-4 col-md-4">
												<p>
													Newer Name<span style="float: right">:</span>
												</p>
											</div>

											<div class="col-lg-8 col-md-8">
												<p>
													<strong> Prashant Gupta </strong>
												</p>
											</div>
										</div>

										<div class="col-lg-12">
											<div class="col-lg-4 col-md-4">
												<p>
													Service Line<span style="float: right">:</span>
												</p>
											</div>

											<div class="col-lg-8 col-md-8">
												<p>
													<strong> TTND-Intern </strong>
												</p>
											</div>
										</div>

										<div class="col-lg-12">
											<div class="col-lg-4 col-md-4">
												<p>
													Practice<span style="float: right">:</span>
												</p>
											</div>

											<div class="col-lg-8 col-md-8">
												<p>
													<strong> Intern </strong>
												</p>
											</div>
										</div>

										<div class="col-lg-12 col-md-12">
											<div class="col-lg-4 col-md-4">
												<p>
													Email-ID<span style="float: right">:</span>
												</p>
											</div>

											<div class="col-lg-8 col-md-8">
												<p>
													<strong> prashant.gupta@tothenew.com </strong>
												</p>
											</div>
										</div>

									</div>
								</li>

								<li class="user-footer">
									<div class="col-xs-6 text-center pull-left">
										<a href="" class="btn btn-default btn-flat"> Guidelines </a>
									</div>
									<div class="col-xs-6 text-center pull-right">
										<a href="" class="btn btn-default btn-flat"> <img
											src="images/ico-logout.png"> Logout
										</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		</nav>
	</div>
</body>
</html>