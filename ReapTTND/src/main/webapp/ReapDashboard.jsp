<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<title>Reap</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script type="text/javascript" src="daterangepicker/moment.js"></script>
<script type="text/javascript" src="daterangepicker/daterangepicker.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" />
<link rel="icon" href="images/favicon.ico" />
<link type="text/css" rel="stylesheet"
	href="ReapCSS/ReapHeader-style.css" />
<link type="text/css" rel="stylesheet"
	href="ReapCSS/ReapDashboard-style.css" />
<link rel="stylesheet" type="text/css" media="all"
	href="daterangepicker/daterangepicker.css" />
</head>
<body id="reapJS">
	<%@ include file="ReapHeader.jsp"%>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#dashboard").addClass("active");
		});
	</script>

	<div class="container-fluid">
		<div class="content-wrapper">
			<div class="col-md-9">
				<div class="box-content">
					<div class="panel-group ">
						<div class="panel panel-default">
							<div class="panel-heading panel-karma">
								<img src="images/ico-badge-hover.png"> <strong>Recognize
									karma</strong>
							</div>
							<div class="karma-body">
								<div class="panel-body">
									<form action="#" method="post" name="userVote">
										<div class="row karmaMargin">
											<div class="col-md-6">
												<div class="input-group input-group-md">
													<span class="input-group-addon" id="sizing-addon1">
														<img src="images/select-newer.png">
													</span> <input type="text" class="form-control"
														placeholder="Select a Newer"
														aria-describedby="sizing-addon1">
												</div>
											</div>
											<div class="col-md-6">

												<div class="col-md-5">
													<div class="dropdown dd1">
														<ul class="dd11">
															<button style="width: 100%;" align="left"
																class="btn btn-default dropdown-toggle" type="button"
																data-toggle="dropdown">
																Select a Badge <span class="caret"></span>
															</button>
															<ul class="dropdown-menu dropdown-menu-right dd1">
																<li><a href="#" title="Gold"> <img
																		src="images/ico-badge-orange.png"> Gold <span>
																			(<i>2</i>)
																	</span>
																</a></li>
																<li><a href="#" title="Silver"> <img
																		src="images/ico-badge-grey.png"> Silver <span>
																			(<i>4</i>)
																	</span>
																</a></li>
																<li><a href="#" title="Bronze"> <img
																		src="images/ico-badge-brown.png"> Bronze <span>
																			(<i>6</i>)
																	</span>
																</a></li>
															</ul>

														</ul>
													</div>
												</div>
												<div class="col-md-7">
													<div class="dropdown dd2" align="left">
														<button class="btn btn-default dropdown-toggle"
															style="width: 100%;" type="button" data-toggle="dropdown">
															Select Karma <span class="caret"></span>
														</button>
														<ul class="dropdown-menu button-default">
															<li><a href="#" title="Extra Miler">Extra Miler</a></li>
															<li><a href="#" title="Knowledge Sharing">Knowledge
																	Sharing</a></li>
															<li><a href="#" title="Mentorship">Mentorship</a></li>
															<li><a href="#" title="Pat on a back">Pat on a
																	back</a></li>
															<li><a href="#" title="Customer Delight">Customer
																	Delight</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div>
											<form role="form">
												<div class="form-group">
													<label for="comment">Reason:</label>
													<textarea class="form-control" rows="5" id="Reason"
														value="Please Select a Karma First"></textarea>
												</div>
											</form>
										</div>
										<!-- dropdown to select the karma   -->
										<div class="row">
											<div class="col-md-12">
												<input type="submit" name="submit" value="Recognize">
											</div>
										</div>
										<!-- Button to submit   -->
									</form>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box-content">
					<div class="post">
						<div class="post-header">
							<div class="row">
								<div class="col-lg-5">
									<img src="images/ico-wall-hover.png">
									<h3>wall of fame</h3>
								</div>
								<div class="col-lg-7">
									<form action="" method="post" class="Searchform">
										<div class="col-lg-3">
											<input type="text" class="search" placeholder="Search"
												name="search" id="search" value="">
										</div>
										<div class="col-lg-4">
											<span class="dd"> <select name="serviceLineName"
												class="submitForm" defaultLabel="Service Lines"
												id="serviceLine">
													<option value="1">Service Lines</option>
													<option value="2">Analytics</option>
													<option value="3">Analytics-SEA</option>
													<option value="4">Digital Marketing</option>
													<option value="5">Digital Marketing India</option>
													<option value="6">Digital Marketing-SEA</option>
													<option value="7">Technology</option>
													<option value="8">ThoughtBuzz India</option>
													<option value="9">TTN Overheads</option>
													<option value="10">TTND-Intern</option>
													<option value="11">TTND-SEA</option>
													<option value="12">TTNV</option>
													<option value="13">Video Solutions</option>
											</select>
											</span>
										</div>
										<div class="col-lg-4">
											<span class="dd" id="practicehead"> <select
												name="practiceName" class="submitForm" showall="true"
												defaultlabel="Practices" id="practice">
													<option value="1">Practices</option>
													<option value="2">Admin</option>
													<option value="3">AMC</option>
													<option value="4">Analytics</option>
													<option value="5">Analytics-SEA</option>
													<option value="6">BigData</option>
													<option value="7">BlogMint</option>
													<option value="8">Business Development</option>
													<option value="9">Creative</option>
													<option value="10">Design</option>
													<option value="11">DevOps</option>
													<option value="12">DM India CORPORATE</option>
													<option value="13">Drupal</option>
													<option value="14">Feen</option>
													<option value="15">Finance</option>
													<option value="16">HR</option>
													<option value="17">Intern</option>
													<option value="18">IT</option>
													<option value="19">JVM</option>
													<option value="20">Management</option>
													<option value="21">MARTECH</option>
													<option value="22">Mean</option>
													<option value="23">Media Planning &amp; Buying</option>
													<option value="24">Mobility</option>
													<option value="25">Sales &amp; Marketing</option>
													<option value="26">Security</option>
													<option value="27">Shared Services-SEA</option>
													<option value="28">Social media</option>
													<option value="29">Social Media Marketing</option>
													<option value="30">Social Media-SEA</option>
													<option value="31">Strategy</option>
													<option value="32">Technology Corporate</option>
													<option value="33">Testing</option>
													<option value="34">ThoughtBuzz India</option>
													<option value="35">TTN Overheads</option>
													<option value="36">TTNVManagement</option>
													<option value="37">Video Corporate</option>
													<option value="38">Video Managed Services</option>
													<option value="39">Video Ready</option>
											</select>
											</span>
										</div>
										<div id="reportrange" class="col-lg-1">
											<i class="fa fa-calendar" id="dateRange"
												data-onchange="filterUserVote"></i> <input type="hidden"
												name="startDate" value="" id="startDate"> <input
												type="hidden" name="endDate" value="" id="endDate">
										</div>
										<script type="text/javascript">
											$(document)
													.ready(
															function() {
																$('#dateRange')
																		.daterangepicker(
																				{
																					ranges : {
																						'Today' : [
																								moment(),
																								moment() ],
																						'Yesterday' : [
																								moment()
																										.subtract(
																												1,
																												'days'),
																								moment()
																										.subtract(
																												1,
																												'days') ],
																						'Last 7 Days' : [
																								moment()
																										.subtract(
																												6,
																												'days'),
																								moment() ],
																						'Last 30 Days' : [
																								moment()
																										.subtract(
																												29,
																												'days'),
																								moment() ],
																						'This Month' : [
																								moment()
																										.startOf(
																												'month'),
																								moment()
																										.endOf(
																												'month') ],
																						'Last Month' : [
																								moment()
																										.subtract(
																												1,
																												'month')
																										.startOf(
																												'month'),
																								moment()
																										.subtract(
																												1,
																												'month')
																										.endOf(
																												'month') ]
																					}
																				},
																				function(
																						start,
																						end,
																						label) {
																					$(
																							"#startDate")
																							.val(
																									start
																											.format('YYYY-MM-DD'));
																					$(
																							"#endDate")
																							.val(
																									end
																											.format('YYYY-MM-DD'));
																				});

															});
										</script>
									</form>
								</div>
							</div>
						</div>

						<div class="content">
							<div id="userVoteList" class="pad-left-10">

								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>
								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>
								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>
								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>
								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>
								<div class="media">
									<a class="wof-pro pull-left" href="#"> <img
										class="media-object" src="images/fetchUserImage.jpg"
										alt="Media Object">
									</a>
									<div class="media-body">
										<div class="media-heading">
											<a href="/badge/index/314"><strong>Prashant
													Gupta</strong></a> has received <img src="images/ico-badge-orange.png"
												title="Gold" alt="Gold"> from <a
												href="/badge/index/485"> <strong>Shubham Shukla</strong>
											</a> for Karma : Mentorship
										</div>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text.<br>
										This is some sample text. This is some sample text. <br>
										This is some sample text. This is some sample text. <br>
										<i class="momentDate" data-date="20160618 16:25:01">a day
											ago</i>
									</div>
								</div>

								<div id="myModal" class="modal fade" role="dialog">
									<div class="modal-dialog" style="width: 620px; height: 1100px;">
										<div class="modal-content" id="modalContent">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">×</button>
											</div>
											<div class="modal-body"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="box-content">
					<div class="panel">
						<div class="panel-heading">
							<img src="images/ico-badge-hover.png"> <strong>MY
								BADGES</strong>
						</div>
						<div class="panel-body">
							<div>
								<div class="col-md-4">
									<div class="badge-content-left">
										<img src="images/fetchUserImage.jpg" class="img-rounded">
									</div>
								</div>
								<div class="col-md-8">
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
						</div>
					</div>
				</div>

				<div class="box-content">
					<div class="panel">

						<ul class="nav nav-tabs nav-justified"
							style="background-color: #d9d9d9">
							<li class="active"><a href="#Newer" data-toggle="tab">Newer
									Board</a></li>
							<li><a href="#idea" data-toggle="tab">Idea</a></li>
						</ul>

						<div class="panel-body">
							<div class="tab-content">
								<div id="Newer" class="tab-pane fade in active"></div>
								<div id="idea" class="tab-pane fade"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>