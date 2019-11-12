<%@ page import="com.programmingjavaweb.utils.SecurityUtils" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Trang chủ</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="row" >
                <div class="col-xs-12">
                    <input type="hidden" value="<%= SecurityUtils.getPrincipal().getToken()%>" id="token">
                </div>
            </div>
        </div>
    </div>
</div><!-- /.main-content -->
<script>
    $(document).ready(function () {
        if(localStorage) {
            console.log("Yes local Storage");
            localStorage.setItem('token', $('#token').val());
        } else {
            console.log("No");
        }
    })
</script>
</body>
</html>