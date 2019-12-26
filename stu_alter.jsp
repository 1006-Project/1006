<%@ page import="daos.stu_dao" %>
<%@ page import="beans.student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ognl.DynamicSubscript" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" %>

<!-- 修改个人信息 -->
<%


    String account = (String)session.getAttribute("account");

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
<script>
    function pass(){
        window.location="stu_alter_success.jsp?name=" + document.all.name.value +
            "&major=" + document.all.major.value +
            "&classes=" + document.all.classes.value +
            "&in_year=" + document.all.in_year.value +
            "&out_year=" + document.all.out_year.value +
            "&unit=" + document.all.unit.value +
            "&city=" + document.all.city.value +
            "&phone=" + document.all.phone.value +
            "&email=" + document.all.email.value ;
    }

</script>
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
                    <div class="page-header-image" data-parallax="true" style="background-image: url('images/cc-bg-2.jpg');"></div>
                    <div class="container">
                        <div class="content-center">
                            <div class="cc-profile-image"><a href="#"><img src="images/anthony1.jpg" alt="Image"/></a></div>
                            <div class="h2 title">修改个人信息</div>
                            <p class="category text-white">modify your personal information</p>
                            <a class="btn btn-primary smooth-scroll mr-2" href="navigationBar.html" data-aos="zoom-in" data-aos-anchor="data-aos-anchor">返回上一层</a>
                            <a class="btn btn-primary" href="#" onclick="pass()" data-aos="zoom-in" data-aos-anchor="data-aos-anchor">确认修改</a>
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
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getName()%>" name="name"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">专 业:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getMajor()%>" name="major"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">班 级:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getClasses()%>" name="classes"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">入学年份:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getIn_year()%>" name="in_year"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">毕业年份:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getOut_year()%>" name="out_year"/></div>
                                </div>


                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="card-body">
                                <div class="h4 mt-0 title"> <br></div>
                                <div class="row">
                                    <div class="col-sm-4"><strong class="text-uppercase">工作单位:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getUnit()%>" name="unit"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">所在城市:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getCity()%>" name="city"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">联系电话:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getPhone()%>" name="phone"/></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-sm-4"><strong class="text-uppercase">邮 箱:</strong></div>
                                    <div class="col-sm-8"><input type="text" style="height:25px;width:200px;" value = "<%= stu.getEmail()%>" name="email"/></div>
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
<%--<html>--%>
<%--<head>--%>
<%--    <title>通讯录系统</title>--%>

<%--</head>--%>

<%--<body>--%>

<%--<form action = "stu_alter_success.jsp" method = "post">--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <td>姓名：</td><td><input type = "text" name = "name" value = "<%= stu.getName()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>所读专业：</td><td><input type = "text" name = "major" value = "<%= stu.getMajor()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>所在班级：</td><td><input type = "text" name = "classes" value = "<%= stu.getClasses()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>入学年份：</td><td><input type = "text" name = "in_year" value = "<%= stu.getIn_year()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>毕业年份：</td><td><input type = "text" name = "out_year" value = "<%= stu.getOut_year()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>就业单位：</td><td><input type = "text" name = "unit" value = "<%= stu.getUnit()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>所在城市：</td><td><input type = "text" name = "city" value = "<%= stu.getCity()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>联系电话：</td><td><input type = "text" name = "phone" value = "<%= stu.getPhone()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>电子邮件：</td><td><input type = "text" name = email value = "<%= stu.getEmail()%>"></td>--%>
<%--        </tr>--%>
<%--        <tr><td><input type = "submit" value = "提交修改"></td><td></td></tr>--%>

<%--    </table>--%>
<%--</form>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>
<%--</body>--%>
<%--</html>--%>