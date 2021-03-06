<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="net.model.StaffBean" %>
<%@ page import="java.util.List" %>
<jsp:useBean id="model_staff" class="net.model.StaffAccess" />

<!DOCTYPE html>
<html>
<head>
	<title>Staff</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" type="text/css" href="staff.css">
	<link rel="stylesheet" type="text/css" href="header.css">
	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="back-to-top-button.css">
	<script type=text/javascript src="back-to-top-button.js"></script>
</head>
<body>
	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" class="navbarlogo">
			</a></div>
			<div class="navigationlist">
				<div class="nav_item"><a href="home.jsp">Home</a></div>
				<div class="nav_item"><a href="staff.jsp">Staff</a></div>
				<div class="nav_item"><a href="program-structure.jsp">Program Structure</a></div>
				<div class="nav_item"><a href="student-activities.jsp">Student Activities</a></div>
				<div class="nav_item"><a href="about.jsp">About</a></div>
			</div>
		</div>
	</div>

	<!-- body section-->
	<button onclick="topFunction()" id="myBtn" title="Go to top">&#8593;</button>
	
	<div class="banner_body">

		<div class="staff_container">

			<div><h2>Staff Directory</h2></div>


			<div class="staff_dir">

				<%
					List<StaffBean> model = model_staff.get();

					for(StaffBean bean: model)
					{
				%>

				<div class="card_container">
					<a href="staff-info.jsp?sid=<%=bean.getStaff_id()%>">;
						<div class="card">
							<img src="images/<%=bean.getImage()%>">
							<h4><strong><%=bean.getStaff_name()%></strong></h4>
						</div>
					</a>
				</div>

				<%
					}
				%>

			</div>
		</div>


		<!-- Footer section -->
		<footer>
			<section class="footer">

				<div class="footer-container">
					<div class="footer-column">
						<h3>EXPLORE</h3>
						<ul class="text-white">
							<li><a href="home.jsp">Home</a></li>
							<li><a href="staff.jsp">Staff</a></li>
							<li><a href="program-structure.jsp">Program Structure</a></li>
							<li><a href="student-activities.jsp">Student Activities</a></li>
							<li><a href ="about.jsp">About</a></li>
						</ul>
					</div>

					<div class="footer-column">
						<h3>QUICK LINK</h3>
						<ul class="text-white">
							<li><a href="http://www.xmu.edu.my/" target="_blank" rel="noopener">Xiamen University Malaysia</a></li>
							<li><a href="https://linc.xmu.edu.my/" target="_blank" rel="noopener">Library</a></li>
						</ul>
					</div>

					<div class="footer-column">
						<h3>OFFICE ADDRESS</h3>
						<ul class="text-white">
							<li>Xiamen University Malaysia</li>
							<li>10, Jalan Sunsuria,</li>
							<li>Bandar Sunsuria,</li>
							<li>43900 Sepang,</li>
							<li>Selangor Darul Ehsan, Malaysia.</li>
						</ul>
					</div>

					<div class="footer-column">
						<h3>CONTACT US</h3>
						<ul class="text-white">
							<li>
								<a href = "https://www.facebook.com/SWEstudentunion/?ref=br_rs" target="_blank" rel="noopener">
									<img src = "images\facebook.png" alt = "facebook">
								</a>
								<a href = "mailto: swestudentcouncil@outlook.com">
									<img src = "images\mail.png" alt = "mail">
								</a>
								<a href = "https://xmux.xdea.top/" target="_blank" rel="noopener">
									<img src = "images\xmux.jpg" alt = "xmux">
								</a>
							</li>
						</ul>
					</div>
				</div>

			</section>

			<div class = "footer2">
				Copyright &#0169 2019 Information Technology Xiamen University Malaysia. All rights reserved.
			</div>
		</footer>

	</div>

	
	
</body>
</html>
