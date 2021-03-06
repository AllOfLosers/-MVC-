<%@ page language="java" import="java.util.*,system.model.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>教师登录界面</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=path %>/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=path %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="<%=path %>/assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="<%=path %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=path %>/assets/css/style-responsive.css" rel="stylesheet">

    <script src="<%=path %>/assets/js/chart-master/Chart.js"></script>
    <script type="text/javascript">
    	var grade = "";
    	function getGrade(value){
    		grade = value;
    	};
    	function singleUpdate(Sno){

        	document.score_form.action="<%=path %>/ScoreServlet?operate=singleUpdate&Sno="+Sno+"&grade="+grade+"";
        	document.score_form.submit();
    	};
    	function deleteAll() {
    		
        	document.score_form.action = "<%=path %>/ScoreServlet?operate=deleteAll";
        	document.score_form.submit();
    	};
    </script>
    
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <%
     	Teacher teacherInfo = (Teacher)session.getAttribute("teacherInfo");
    %>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="javascript:;" class="logo"><b>教师操作界面</b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">
                            <i class="fa fa-user"></i>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">教师信息</p>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">职工号：</div>
                                        <div class="message"><%=teacherInfo.getTno() %></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">教师姓名：</div>
                                        <div class="message"><%=teacherInfo.getTname() %></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">性别：</div>
                                        <div class="message"><%=teacherInfo.getTsex() %></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">教授课程号：</div>
                                        <div class="message"><%=teacherInfo.getCno() %></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">教授课程名：</div>
                                        <div class="message"><%=teacherInfo.getCname() %></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <div class="task-info">
                                        <div class="desc">用户权限：</div>
                                        <div class="message"><%=teacherInfo.getPurview() %></div>
                                    </div>
                                </a>
                            </li>  
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">你有5条新通知</p>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <span class="photo"><img alt="avatar" src="<%=path %>/assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">教务处</span>
                                    <span class="time">刚刚</span>
                                    </span>
                                    <span class="message">
                                        20周周四放假！
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <span class="photo"><img alt="avatar" src="<%=path %>/assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">软件学院</span>
                                    <span class="time">5 分钟前.</span>
                                    </span>
                                    <span class="message">
                                     	老师们记得点名，不要拿错点名册。
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <span class="photo"><img alt="avatar" src="<%=path %>/assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">计算机中心</span>
                                    <span class="time">2 小时前.</span>
                                    </span>
                                    <span class="message">
                                                                         发来了一串神秘连接：Hello，there.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <span class="photo"><img alt="avatar" src="<%=path %>/assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">系主任</span>
                                    <span class="time">4 小时前.</span>
                                    </span>
                                    <span class="message">
                                                                         今年的指标是至少要抓三个学生！
                                    </span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="<%=path %>/login.jsp">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
              	  <p class="centered"><a href="javascript:;"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered"><%=teacherInfo.getTname() %>,欢迎回来</h5>
              	  	
                  <li class="mt">
                      <a href="<%=path %>/teacher/teacher_index.jsp">
                          <i class="fa fa-dashboard"></i>
                          <span>主界面</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a class="active" href="<%=path %>/ScoreServlet?operate=classQuery&Tno=<%=teacherInfo.getTno() %>" >
                          <i class="fa fa-desktop"></i>
                          <span>班级名单</span>
                      </a>
                  </li>
				  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>成绩管理</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="<%=path %>/ScoreServlet?operate=insertQuery&Cno=<%=teacherInfo.getCno()%>&Tno=<%=teacherInfo.getTno()%>">录入成绩</a></li>
                      </ul>
                      <ul class="sub">
                          <li><a  href="<%=path %>/teacher/temp.jsp?Cno=<%=teacherInfo.getCno()%>">成绩审查</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="<%=path %>/CourseServlet?operate=allCourseQuery&href=teacher">
                          <i class="fa fa-th"></i>
                          <span>全校课程查询</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="<%=path %>/ScoreServlet?operate=allScoreQuery">
                          <i class="fa fa-book"></i>
                          <span>查询全部学生成绩</span>
                      </a>
                  </li>                 

              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      <div class="copyrights">2018 - 韦宇林 - 暑期课程设计  - Design</div>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <%
      	String count = request.getParameter("count");
      	if(count != null){
      		out.println("<center><h2><font color=#fff>"+count+"条记录已存在！已存在成绩不会被重复录入</font></h2></center>");
      	}
      	
       ArrayList classScoreList = (ArrayList)request.getAttribute("classScoreList");
       if(classScoreList==null){
       		response.sendRedirect(""+path+"/ScoreServlet?operate=classQuery&Tno="+teacherInfo.getTno()+"");
       }
       else{
      %>    
      <section id="main-content">
          <section class="wrapper">
          	<h3><i class="fa fa-angle-right"></i> 班级学生成绩：</h3>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <h4><i class="fa fa-angle-right"></i>查询结果：</h4>
                          <section id="unseen">
                          <form name="score_form" method="post" action="">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              
                              <tr>
                              	  <th class="numeric">选择</th>
                              	  <th class="numeric">学号<a href="./ScoreServlet?operate=sortBySno&Tno=<%=teacherInfo.getTno()%>"><span class="caret"></span></a></th>
                              	  <th class="numeric">学生姓名</th>
                              	  <th class="numeric">性别</th>
                              	  <th class="numeric">专业</th>
                                  <th class="numeric">课程名</th>
                                  <th class="numeric">成绩<a href="./ScoreServlet?operate=sortByGrade&Tno=<%=teacherInfo.getTno()%>"><span class="caret"></span></a></th>
                                  <th class="numeric"  colspan="2">操作</th>
                              </tr>
                              </thead>
                              <tbody>
                              <%
         						for(int i=0;i<classScoreList.size();i++){
         						Score classScore = (Score)classScoreList.get(i); 
         					  %>
                              <tr>
                              	  <td class="numeric"><input type="checkbox" name="ids" value="<%=classScore.getSno()%>"/><input type="hidden" name="Cno" value="<%=classScore.getCno() %>"/></td>                            	  
                              	  <td class="numeric"><%=classScore.getSno() %></td>
                              	  <td class="numeric"><%=classScore.getSname() %></td>
                              	  <td class="numeric"><%=classScore.getSsex() %></td>
                              	  <td class="numeric"><%=classScore.getMajor() %></td>
                                  <td class="numeric"><%=classScore.getCname() %></td>                                  
                                  <td class="numeric"><input type="text" name="grade" style="width:35" onkeyup="getGrade(this.value)" value="<%=classScore.getGrade()%>"/></td>
                                  <td class="numeric"><span class="badge bg-warning" onclick="singleUpdate(<%=classScore.getSno() %>)"><i class="fa fa-pencil">修改</i></span></td>
                                  <td class="numeric"><span class="badge bg-theme04"><i class="fa fa-trash-o "><a href="./ScoreServlet?operate=delete&Sno=<%=classScore.getSno()%>&Cno=<%=classScore.getCno()%>">删除</a></i></span></td>
                              </tr>
                              <%} %>
                                                         
                              </tbody>
                          </table>
                          <span class="btn btn-warning btn-lg"><a href="<%=path %>/ScoreServlet?operate=updateQuery&Tno=<%=teacherInfo.getTno() %>">批量修改</a></span>
                          <input type="button" class="btn btn-danger btn-lg" onclick="deleteAll()" value="批量删除"/>
                          <a class="btn btn-success btn-lg" href="<%=path %>/ScoreServlet?operate=classScoreExport&Tno=<%=teacherInfo.getTno() %>">导出Excel</a>
						</form>
											
                  </div><!-- /content-panel -->
               </div><!-- /col-lg-4 -->			
		  	</div><!-- /row -->

		</section><! --/wrapper -->		  			  	                         
      <%} %>


      <!--main con     <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2018 - 韦宇林 - 暑期课程设计  - Design 
              <a href=""+path+"/teacher/classScoreQuery.jsp#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="<%=path %>/assets/js/jquery.js"></script>
    <script src="<%=path %>/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="<%=path %>/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="<%=path %>/assets/js/jquery.scrollTo.min.js"></script>
    <script src="<%=path %>/assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="<%=path %>/assets/js/common-scripts.js"></script>

    <!--script for this page-->
    

  </body>
</html>