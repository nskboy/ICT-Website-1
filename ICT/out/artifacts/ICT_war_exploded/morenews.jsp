<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
	<title>Student Life</title>
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="header.css">

	<link rel="stylesheet" type="text/css" href="footer.css">
	<link rel="stylesheet" type="text/css" href="morenews.css">
</head>
<body>
	<div class="navbarcont">
		<div class="navbarcont2">
			<div><a href="home.jsp">
				<img src="images/logo.png" class="navbarlogo">
			</a></div>	
			<div class="navigationlist">
				<div id="nav_item"><a href="home.jsp">Home</a></div>
				<div id="nav_item"><a href="staff.jsp">Staff</a></div>
				<div id="nav_item"><a href="program-structure.jsp">Program Structure</a></div>
				<div id="nav_item"><a href="student-activities.jsp">Student Activities</a></div>
				<div id="nav_item"><a href="about.jsp">About</a></div>
			</div>	
		</div>
	</div>

	<div class="container">
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Statement stm = DriverManager.getConnection("jdbc:mysql://localhost:3306/ICT", "root", "xmuy").createStatement();
			String sql = "select idnews as nid, title as nt, content as nc, caption as capt, thumbnail as img, datecreated as date\n" +
					"from news\n" +
					"order by datecreated DESC";
			ResultSet rs= stm.executeQuery(sql);
			if (rs.next()){
		%>
		<div class="newscontainer">	
			<a href="news.jsp">
				<img src="<%=rs.getString("img")%>" class="newsimg" title="<%=rs.getString("nt")%>" style="height:200px; width: 300px;">
			</a	>
			<div style="width:70%;display:flex; padding:10px 50px 0 70px; flex-direction: column;">
				<!-- title -->
				<a href="news.jsp" id="t">
					<b><%=rs.getString("nt")%></b>
				</a>
				<div class="date">
					<!-- Date created -->
					<i class="fas fa-calendar-alt"></i>
					Date Created: <time datetime="2018-05-21"><%=rs.getString("date")%></time>
				</div>
				<!-- content -->
				<a href="news.jsp" id="t">
					<p><%=rs.getString("capt")%></p>
				</a>
			</div>
		</div>
		<%}
			if(rs.next()){%>
		<div class="newscontainer">	
			<a href="news.jsp">
				<img src="<%=rs.getString("img")%>" class="newsimg" title="<%=rs.getString("nt")%>" style="height:200px; width: 300px;">
			</a	>
			<div style="width:70%;display:flex; padding:10px 50px 0 70px; flex-direction: column;">
				<!-- title -->
				<a href="news.jsp" id="t">
					<b><%=rs.getString("nt")%></b>
				</a>
				<div class="date">
					<!-- Date created -->
					<i class="fas fa-calendar-alt"></i>
					Date Created: <time datetime="2018-05-21"><%=rs.getString("date")%></time>
				</div>
				<!-- content -->
				<a href="news.jsp" id="t">
					<p><%=rs.getString("capt")%></p>
				</a>
			</div>
		</div>
		<%}
			if(rs.next()){%>
		<div class="newscontainer">	
			<a href="news.jsp">
				<img src="<%=rs.getString("img")%>" class="newsimg" title="<%=rs.getString("nt")%>" style="height:200px; width: 300px;">
			</a	>
			<div style="width:70%;display:flex; padding:10px 50px 0 70px; flex-direction: column;">
				<!-- title -->
				<a href="news.jsp" id="t">
					<b><%=rs.getString("nt")%></b>
				</a>
				<div class="date">
					<!-- Date created -->
					<i class="fas fa-calendar-alt"></i>
					Date Created: <time datetime="2018-05-21"><%=rs.getString("date")%></time>
				</div>
				<!-- content -->
				<a href="news.jsp" id="t">
					<p><%=rs.getString("capt")%></p>
				</a>
			</div>
		</div>
		<%}
			if(rs.next()){%>
		<div class="newscontainer">	
			<a href="news.jsp">
				<img src="<%=rs.getString("img")%>" class="newsimg" title="<%=rs.getString("nt")%>" style="height:200px; width: 300px;">
			</a	>
			<div style="width:70%;display:flex; padding:10px 50px 0 70px; flex-direction: column;">
				<!-- title -->
				<a href="news.jsp" id="t">
					<b><%=rs.getString("nt")%></b>
				</a>
				<div class="date">
					<!-- Date created -->
					<i class="fas fa-calendar-alt"></i>
					Date Created: <time datetime="2018-05-21"><%=rs.getString("date")%></time>
				</div>
				<!-- content -->
				<a href="news.jsp" id="t">
					<p><%=rs.getString("capt")%></p>
				</a>
			</div>
		</div>
		<%}%>
	</div>



	<!-- Footer section -->
	<footer>
		<section class="footer">
			
	        <div class="footer-container">
	            <div class="footer-column">
	                <h3>EXPLORE</h3>
	                <ul style = "list-style-type: none;" class="text-white">
	                    <li><a href="home.jsp">Home</a></li>
	                    <li><a href="staff.jsp">Staff</a></li>
	                    <li><a href="program-structure.jsp">Program Structure</a></li>
	                    <li><a href="student-activities.jsp">Student Activities</a></li>
	                    <li><a href ="about.jsp">About</a></li>
	                </ul>
	            </div>

	            <div class="footer-column">
	                <h3>QUICK LINK</h3>
	                <ul style = "list-style-type: none;" class="text-white">
	                    <li><a href="http://www.xmu.edu.my/">Xiamen University Malaysia</a></li>
	                    <li><a href="https://linc.xmu.edu.my/">Library</a></li>
	                </ul>
	            </div>

	            <div class="footer-column">
	                <h3>OFFICE ADDRESS</h3>
	                <ul style = "list-style-type: none;" class="text-white">
	                	<li>Xiamen University Malaysia</li>
	                    <li>10, Jalan Sunsuria,</li>
	                    <li>Bandar Sunsuria,</li>
	                    <li>43900 Sepang,</li>
	                    <li>Selangor Darul Ehsan, Malaysia.</li>
	                </ul>
	            </div>

	            <div class="footer-column">
	                <h3>CONTACT US</h3>
	                <ul style = "list-style-type: none;" class="text-white">
	                    <li>
							<a href = "https://www.facebook.com/SWEstudentunion/?ref=br_rs">
								<img src = "images/facebook.png">
							</a>
							<a href = "mailto: SWEstudentunion@outlook.com">
								<img src = "images/mail.png">
							</a>
							<a href = "https://xmux.xdea.top/">
								<img src = "images/xmux.jpg">
							</a>

	                    </li>
	                </ul>
	            </div>
	        </div>

	    </section>

		<div class = "footer2">
			Copyright © 2019 Information Technology Xiamen University Malaysia. All rights reserved.
		</div>
	</footer>


	</div>

	
	
</body>
</html>
