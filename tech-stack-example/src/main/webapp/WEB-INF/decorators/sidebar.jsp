<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<div class="sidebar app-aside" id="sidebar">
	<div class="sidebar-container perfect-scrollbar ps-container ps-active-y">
		<nav>
			<!-- start: MAIN NAVIGATION MENU -->
			<div class="navbar-title">
				<span>Main Navigation</span>
			</div>
			<ul class="main-navigation-menu">
				<li>
					<a href="javascript:void(0)">
						<div class="item-content">
							<div class="item-media">
								<i class="ti-layout-grid2"></i>
							</div>
							<div class="item-inner">
								<span class="title"> User Management </span><i class="icon-arrow"></i>
							</div>
						</div>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="${ctx}/admin/menuManagement/menu-list.jsp">
								<span class="title">Menu Management</span>
							</a>
						</li>
						<li>
							<a href="table_responsive.html">
								<span class="title">Permission Management</span>
							</a>
						</li>
						<li>
							<a href="table_data.html">
								<span class="title">Role Management</span>
							</a>
						</li>
						<li>
							<a href="table_data.html">
								<span class="title">User Management</span>
							</a>
						</li>
					</ul>
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