<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Chỉnh sửa tòa nhà</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try {
                    ace.settings.check('breadcrumbs', 'fixed')
                } catch (e) {
                }
            </script>
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Chỉnh sửa tòa nhà</li>
            </ul>
        </div>
        <div class="page-content">
            <div class="row">
                <div class="col-xs-12">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">
                                ${message}
                        </div>
                    </c:if>
                    <form:form commandName="model" id="formEdit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Tên tòa nhà</label>
                            <div class="col-sm-9">
                                <form:input type="text" class="form-control" id="name" path="name" />
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Người quản lý tòa nhà</label>
                        </div>
                        <br/>
                        <br/>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Quận</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<select class="form-control" id="district" name="district">--%>
                                    <%--<c:if test="${empty model.district}">--%>
                                        <%--<option value=""> -- Chọn quận -- </option>--%>
                                        <%--<c:forEach var="item" items="${districts}">--%>
                                            <%--<option value="${item.districtCode}">${item.name}</option>--%>
                                        <%--</c:forEach>--%>
                                    <%--</c:if>--%>
                                    <%--<c:if test="${not empty model.district}">--%>
                                        <%--<c:forEach var="item" items="${districts}">--%>
                                            <%--<option value="${item.districtCode}"--%>
                                                    <%--<c:if test="${item.districtCode eq model.district}">--%>
                                                        <%--selected="selected"--%>
                                                    <%--</c:if>>--%>
                                                    <%--${item.name}--%>
                                            <%--</option>--%>
                                        <%--</c:forEach>--%>
                                    <%--</c:if>--%>
                                <%--</select>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Phường</label>
                            <div class="col-sm-9">
                                <form:input type="text" class="form-control" path="ward" />
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Đường</label>
                            <div class="col-sm-9">
                                <form:input type="text" class="form-control" id="street" path="street" />
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Kết cấu</label>
                            <div class="col-sm-9">
                                <form:input type="text" class="form-control" id="structure" path="structure" />
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right">Số tầng hầm</label>
                            <div class="col-sm-9">
                                <input type="number" class="form-control" id="numberOfBasement" name="numberOfBasement"
                                       value="${model.numberOfBasement}">
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Diện tích sàn</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="buildingArea" name="buildingArea"--%>
                                       <%--value="${model.buildingArea}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Hướng</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="direction" name="direction"--%>
                                       <%--value="${model.direction}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Hạng</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="levelBuilding" name="levelBuilding"--%>
                                       <%--value="${model.levelBuilding}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Diện tích thuê</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="rentArea" name="rentArea"--%>
                                       <%--value="${model.rentArea}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Mô tả diện tích</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<textarea class="form-control" id="areaDescription"--%>
                                          <%--name="areaDescription">${model.areaDescription}</textarea>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Giá thuê</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="costRent" name="costRent"--%>
                                       <%--value="${model.costRent}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Mô tả giá</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="costDescription" name="costDescription"--%>
                                       <%--value="${model.costDescription}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Phí dịch vụ</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="serviceCost" name="serviceCost"--%>
                                       <%--value="${model.serviceCost}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Phí ô tô</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="carCost" name="carCost"--%>
                                       <%--value="${model.carCost}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Phí mô tô</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="motorbikeCost" name="motorbikeCost"--%>
                                       <%--value="${model.motorbikeCost}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Phí ngoài giờ</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="overtimeCost" name="overtimeCost"--%>
                                       <%--value="${model.overtimeCost}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Tiền điện</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="electricityCost" name="electricityCost"--%>
                                       <%--value="${model.electricityCost}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Đặt cọc</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="deposit" name="deposit"--%>
                                       <%--value="${model.deposit}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Thanh toán</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="payment" name="payment"--%>
                                       <%--value="${model.payment}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Thời hạn thuê</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="timeContract" name="timeContract"--%>
                                       <%--value="${model.timeContract}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Thời gian trang trí</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="timeDecorator" name="timeDecorator"--%>
                                       <%--value="${model.timeDecorator}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Tên quản lý</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="managerName" name="managerName"--%>
                                       <%--value="${model.managerName}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">SĐT quản lý</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="managerPhone" name="managerPhone"--%>
                                       <%--value="${model.managerPhone}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Phí môi giới</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="commission" name="commission"--%>
                                       <%--value="${model.commission}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Loại Sản phẩm</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<c:if test="${empty model.id}">--%>
                                    <%--<c:forEach var="item" items="${buildingType}">--%>
                                        <%--<input type="checkbox" value="${item}" id="checkbox_${item}"--%>
                                               <%--name="typeArrays">${item.value}>--%>
                                        <%--<br/>--%>
                                    <%--</c:forEach>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${not empty model.id}">--%>
                                    <%--<c:forEach var="item" items="${buildingType}">--%>
                                        <%--<input type="checkbox" value="${item}" id="checkbox_${item}" name="typeArrays"--%>
                                        <%--<c:forEach var="itemTemp" items="${model.typeArrays}">--%>
                                        <%--<c:if test="${itemTemp == item}">--%>
                                               <%--checked--%>
                                        <%--</c:if>--%>
                                        <%--</c:forEach>--%>
                                        <%-->${item.value}--%>
                                        <%--<br/>--%>
                                    <%--</c:forEach>--%>
                                <%--</c:if>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Ghi chú</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<textarea class="form-control" id="note" name="note">${model.note}</textarea>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Link Sản phẩm</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="link" name="link" value="${model.link}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Bản đồ</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="location" name="location"--%>
                                       <%--value="${model.location}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<br/>--%>
                        <%--<br/>--%>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-sm-3 control-label no-padding-right">Hình đại diện</label>--%>
                            <%--<div class="col-sm-9">--%>
                                <%--<input type="text" class="form-control" id="image" name="image" value="${model.image}">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <br/>
                        <br/>
                        <div class="form-group pull-right">
                            <div class="col-sm-12">
                                <c:if test="${not empty model.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold"
                                           id="btnAddOrUpdateBuilding" value="Cập nhập tòa nhà">
                                </c:if>
                                <c:if test="${empty model.id}">
                                    <input type="button" class="btn btn-white btn-warning btn-bold"
                                           id="btnAddOrUpdateBuilding" value="Thêm mới tòa nhà">
                                </c:if>
                            </div>
                        </div>
                        <form:hidden id="buildingId" path="id" />
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {

    });

    $('#btnAddOrUpdateBuilding').click(function (e) {
        e.preventDefault();
        addOrUpdateBuilding();
    });

    function addOrUpdateBuilding() {
        var data = {};
        var formData = $('#formEdit').serializeArray();
        $.each(formData, function (i, v) {
            data["" + v.name + ""] = v.value;
        })
        if($('#buildingId').val() != null) {

        } else {
            addBuilding(data);
        }
    }

    function addBuilding(data) {
        var token = localStorage.getItem("token");
        $.ajax({
            url: "http://localhost:8081/admin/building",
            headers: {
                'Authorization' : 'Bearer ' + token +''
            },
            type: "POST",
            contentType: "application/json",
            data: JSON.stringify(data),
            dataType: "json",
            success: function (result) {
                window.location.href = '<c:url value="/admin/building/list" />';
            },
            error: function (error) {
                console.log(error);
            }
        })
    }

</script>
</body>
</html>
