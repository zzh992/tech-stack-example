<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<div class="sidebar app-aside" id="sidebar">
	<div class="sidebar-container perfect-scrollbar ps-container ps-active-y">
		<nav>
			<!-- start: MAIN NAVIGATION MENU -->
			<div class="navbar-title">
				<span>菜单</span>
			</div>
			<ul class="main-navigation-menu">
				<li>
					<a href="${ctx}/modules/worktype/worktype-list.jsp">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-home"></i>
							</div>
							<div class="item-inner">
								<span class="title"> 工种信息管理 </span>
							</div>
						</div>
					</a>
				</li>
				
				<li>
					<a href="${ctx}/modules/teacher/teacher-list.jsp">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-location-pin"></i>
							</div>
							<div class="item-inner">
								<span class="title"> 顾问老师管理 </span>
							</div>
						</div>
					</a>
				</li>
				<li>
					<a href="${ctx}/modules/course/course-list.jsp">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-pie-chart"></i>
							</div>
							<div class="item-inner">
								<span class="title"> 分课信息管理 </span>
							</div>
						</div>
					</a>
				</li>
				<li>
					<a href="${ctx}/modules/student/searchStudent.jsp">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-pie-chart"></i>
							</div>
							<div class="item-inner">
								<span class="title"> 学生信息管理 </span>
							</div>
						</div>
					</a>
				</li>
				<li>
					<a href="${ctx}/modules/cost/cost-list.jsp">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-pie-chart"></i>
							</div>
							<div class="item-inner">
								<span class="title"> 缴费信息管理 </span>
							</div>
						</div>
					</a>
				</li>
			</ul>
			<!-- end: MAIN NAVIGATION MENU -->
		</nav>
		<div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 3px;">
			<div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div>
		</div>
		<div class="ps-scrollbar-y-rail"
			style="top: 0px; height: 471px; right: 3px;">
			<div class="ps-scrollbar-y" style="top: 0px; height: 285px;"></div>
		</div>
	</div>
</div>