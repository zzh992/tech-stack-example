<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title><sitemesh:title /></title>
<sitemesh:head />
<%@ include file="/WEB-INF/common/common_header.jsp"%>
</head>
<body>
	<div id="app">
		<%@ include file="sidebar.jsp"%>
		<div class="app-content">
			<%@ include file="header.jsp"%>
			<div class="main-content" >
				<div class="wrap-content container" id="container">
					<sitemesh:body />	
				</div>
			</div>
		</div>
	</div> 	 
</body>
</html>