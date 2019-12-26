<%@ page import="daos.stu_dao" %>
<%@ page import="beans.student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>
<!-- 展示他人信息 -->
<%
    String account = request.getParameter("put");

    stu_dao dao = new stu_dao();
    ArrayList<student> students = dao.Login(account);
    for(int i = 0; i < students.size(); i++){
        student stu = (student)students.get(i);
%>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Personal Page</title>

    <link href="css/aos.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
</head>
<body id="top">
<header>
    <div class="profile-page siusxxdebar-collapse">
        <nav class="navbar navbar-expand-lg fixed-top navbar-transparent bg-primary" color-on-scroll="400">
            <div class="container">
                <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-bar bar1"></span><span class="navbar-toggler-bar bar2"></span><span class="navbar-toggler-bar bar3"></span></button>
            </div>

        </nav>
    </div>
</header>
<div class="page-content">
    <div>
        <div class="profile-page">
            <div class="wrapper">
                <div class="page-header page-header-small" filter-color="green">
                    <div class="page-header-image" data-parallax="true" style="background-image: url('images/cc-bg-3.jpg');"></div>
                    <div class="container">
                        <div class="content-center">
                            <div class="cc-profile-image"><a href="#"><img src="images/anthony3.jpg" alt="Image"/></a></div>
                            <div class="h2 title">欢迎来到<%=stu.getName()%>的主页</div>
                            <p class="category text-white">Welcome to his homepage</p><a class="btn btn-primary smooth-scroll mr-2" href="navigationBar.html" data-aos="zoom-in" data-aos-anchor="data-aos-anchor">返回上一层</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="section" id="about">
            <div class="container">
                <div class="card" data-aos="fade-up" data-aos-offset="10">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="card-body">
                                <div class="h4 mt-0 title">个人信息</div>


                                <div class="row">
                                    <div class="col-sm-4"><strong class="text-uppercase">姓 名:</strong></div>
                                    <div class="col-sm-8"><%= stu.getName()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">专 业:</strong></div>
                                    <div class="col-sm-8"><%= stu.getMajor()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">班 级:</strong></div>
                                    <div class="col-sm-8"><%= stu.getClasses()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">入学年份:</strong></div>
                                    <div class="col-sm-8"><%= stu.getIn_year()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">毕业年份:</strong></div>
                                    <div class="col-sm-8"><%= stu.getOut_year()%></div>
                                </div>


                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="card-body">
                                <div class="h4 mt-0 title"> <br></div>
                                <div class="row">
                                    <div class="col-sm-4"><strong class="text-uppercase">工作单位:</strong></div>
                                    <div class="col-sm-8"><%= stu.getUnit()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">所在城市:</strong></div>
                                    <div class="col-sm-8"><%= stu.getCity()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">联系电话:</strong></div>
                                    <div class="col-sm-8"><%= stu.getPhone()%></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">邮 箱:</strong></div>
                                    <div class="col-sm-8"><%= stu.getEmail()%></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<footer class="footer">
    <div class="container text-center"></div>
    <div class="h4 title text-center"></div>
    <div class="text-center text-muted">
        <p>© 1006寝室</p>
    </div>
</footer>
<script src="js/core/jquery.3.2.1.min.js"></script>
<script src="js/core/popper.min.js"></script>
<script src="js/core/bootstrap.min.js"></script>
<script src="js/now-ui-kit.js"></script>
<script src="js/aos.js"></script>
<script src="scripts/main.js"></script>
</body>
</html>
<%
    }
%>
