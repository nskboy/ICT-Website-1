<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="net.model.StaffBean" %>
<jsp:useBean id="model_staff" class="net.model.StaffAccess" />
<%@ page import="net.model.AcadExpBean" %>
<jsp:useBean id="model_AcadExp" class="net.model.AcadExpAccess" />
<%@ page import="net.model.EduBgBean" %>
<jsp:useBean id="model_EduBg" class="net.model.EduBgAccess" />
<%@ page import="net.model.ResIntBean" %>
<jsp:useBean id="model_ResInt" class="net.model.ResIntAccess" />
<%@ page import="net.model.RepPubBean" %>
<jsp:useBean id="model_RepPub" class="net.model.RepPubAccess" />

<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="header.css">
    <link rel="stylesheet" type="text/css" href="footer.css">
    <link rel="stylesheet" type="text/css" href="admin-personal-info.css">
    <link rel="stylesheet" type="text/css" href="back-to-top-button.css">
    <script type=text/javascript src="back-to-top-button.js"></script>

    <style>
        .image-with-tag {float:none; margin:0 auto 10px; display:block; width:400px; padding-bottom:35%;}
    </style>
</head>

<body>
<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);

    if(session.getAttribute("username")==null || session == null)
        response.sendRedirect("admin-login.jsp");
%>
    <div class="navbarcont">
        <div class="navbarcont2">
            <div><a href="home.jsp">
                <img src="images\logo.png" class="navbarlogo">
            </a></div>
            <div class="logout">
                <div style="padding-right:10px; color:white;"><%=session.getAttribute("username")%></div>
                <a href="./AdminLogoutServlet" id ="log">Logout</a>
            </div>
        </div>
    </div>

    <button onclick="topFunction()" id="myBtn" title="Go to top">&#8593;</button>

    <%
        String sid = request.getParameter("sid");
        List<StaffBean> model = model_staff.get();

        for(StaffBean bean: model)
        {

            if(bean.getStaff_id().equals(sid))
            {

    %>

    <div style = "margin: 50px; text-align: center;">
        <h1>Staff Information</h1>
    </div>

    <div class = "flexcontainer">
        <div class="flexbox">
            <div class="col">
                <h2>Personal Info</h2>
                <hr></hr>

                <div class = "infocontainer">
                    <div class = "infobox">
                        <div class = "column" style = "margin-bottom: 0px;">
                            <%=bean.getStaff_name()%>
                        </div>

                        <div class = "column">
                            <p>Name</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-name.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column">
                            <%=bean.getPosition()%>
                        </div>

                        <div class = "column">
                            <p>Position</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-position.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <form action = "./ModifySchoolServlet?sid=<%=request.getParameter("sid")%>" method = "post">
                        <div class = "infobox" style = "background-color: #F5F5F5">
                            <div class = "column" style = "flex: 8.5;">
                                <select name="school" required = "required">
                                    <option value = "" selected disabled hidden><%=bean.getSchool()%></option>
                                    <option value="School of Information Science and Technology">School of Information Science and Technology</option>
                                    <option value="School of Energy and Chemical Engineering">School of Energy and Chemical Engineering</option>
                                    <option value="School of Ocean and Environment">School of Ocean and Environment</option>
                                </select>
                                <br></br>
                                <button><a href="admin-personal-info.jsp?sid=<%=sid%>" style = "color: #000000; text-decoration: none;">Cancel</a></button>
                            </div>

                            <div class = "column" style = "flex: 1.5;">
                                <p>School</p>
                                <input type = "submit" value = "Save Changes" style = "margin-top: 4px;">
                            </div>
                        </div>
                    </form>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px">
                        <div class = "column">
                            <%=bean.getTel()%>
                        </div>

                        <div class = "column">
                            <p>Tel</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-tel.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>

                    <div class = "infobox" style = "padding-top: 0px; margin-top: 10px; margin-bottom: 20px; border-bottom: none;">
                        <div class = "column">
                            <%=bean.getEmail()%>
                        </div>

                        <div class = "column">
                            <p>Email</p>
                        </div>

                        <div class = "column">
                            <p><a href = "admin-modify-email.jsp?sid=<%=sid%>">Edit</a></p>
                        </div>
                    </div>
                </div>
                <hr></hr>
            </div>

            <div class="col">
                <img src="images/<%=bean.getImage()%>">
                <h3><%=bean.getStaff_name()%></h3>

                <a href = "admin-personal-info.jsp?sid=<%=sid%>">
                    <div class = "title-box">
                        <div class = "hover">
                            <h3>Personal Info</h3>
                        </div>
                    </div>
                </a>

                <a href = "admin-image.jsp?sid=<%=sid%>">
                    <div class = "title-box">
                        <div class = "hover">
                            <h3>Image</h3>
                        </div>
                    </div>
                </a>

                <a href = "admin-background.jsp?sid=<%=sid%>">
                    <div class = "title-box">
                        <div class = "hover">
                            <h3>Background and Expertise</h3>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <%
                break;
            }
        }
    %>


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


</body>
</html>

