<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Index Page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>
	<a href="javascript:void(0)" onclick="req()">跳转进来，表示springMVC流程成功！</a><br>
	<span id="replaceLabel">
		
	</span>
	<script type="text/javascript">
		function req(){
			$.ajax({
				type : "get",
				url : "${pageContext.request.contextPath }/api/v1",
				//contentType : "application/json;charset=utf-8",
				dataType : "json",
				success : function(data) {
					var json = data.DataSet;
					var len = json.length;
					for(var i=0;i<len;i++){
						$("#replaceLabel").append("<a id="+i+" style='width:50px;display:block;float:left;'>"+json[i]+"</a>")
					}
				}
			});
		}
	</script>
</body>
</html>
