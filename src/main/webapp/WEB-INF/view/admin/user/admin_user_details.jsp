<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><la:message key="labels.admin_brand_title" /> | <la:message
		key="labels.user_configuration" /></title>
<jsp:include page="/WEB-INF/view/common/admin/head.jsp"></jsp:include>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<jsp:include page="/WEB-INF/view/common/admin/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/view/common/admin/sidebar.jsp">
			<jsp:param name="menuCategoryType" value="user" />
			<jsp:param name="menuType" value="user" />
		</jsp:include>
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					<la:message key="labels.user_title_details" />
				</h1>
				<jsp:include page="/WEB-INF/view/common/admin/crud/breadcrumb.jsp"></jsp:include>
			</section>
			<section class="content">
				<la:form action="/admin/user/">
					<la:hidden property="crudMode" />
					<c:if test="${crudMode==2 || crudMode==3 || crudMode==4}">
						<la:hidden property="id" />
						<la:hidden property="versionNo" />
					</c:if>
					<div class="row">
						<div class="col-md-12">
							<div
								class="box <c:if test="${crudMode == 1}">box-success</c:if><c:if test="${crudMode == 2}">box-warning</c:if><c:if test="${crudMode == 3}">box-danger</c:if><c:if test="${crudMode == 4}">box-primary</c:if>">
								<div class="box-header with-border">
									<jsp:include page="/WEB-INF/view/common/admin/crud/header.jsp"></jsp:include>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<%-- Message --%>
									<div>
										<la:info id="msg" message="true">
											<div class="alert alert-info">${msg}</div>
										</la:info>
										<la:errors />
									</div>
									<%-- Form Fields --%>
									<table class="table table-bordered">
										<tbody>
											<tr>
												<th class="col-xs-2"><la:message key="labels.user_name" /></th>
												<td>${f:h(name)}<la:hidden property="name" /></td>
											</tr>
											<tr>
												<th class="col-xs-2"><la:message key="labels.user_surname" /></th>
												<td>${f:h(surname)}<la:hidden property="surname" /></td>
											</tr>
											<tr>
												<th class="col-xs-2"><la:message key="labels.user_given_name" /></th>
												<td>${f:h(givenName)}<la:hidden property="givenName" /></td>
											</tr>
											<tr>
												<th class="col-xs-2"><la:message key="labels.user_mail" /></th>
												<td>${f:h(mail)}<la:hidden property="mail" /></td>
											</tr>
											<tr>
												<th><la:message key="labels.roles" /></th>
												<td><c:forEach var="rt" varStatus="s"
														items="${roleItems}">
														<c:forEach var="rtid" varStatus="s" items="${roles}">
															<c:if test="${rtid==rt.id}">
																${f:h(rt.name)}<br />
															</c:if>
														</c:forEach>
													</c:forEach></td>
											</tr>
											<tr>
												<th><la:message key="labels.groups" /></th>
												<td><c:forEach var="rt" varStatus="s"
														items="${groupItems}">
														<c:forEach var="rtid" varStatus="s" items="${groups}">
															<c:if test="${rtid==rt.id}">
																${f:h(rt.name)}<br />
															</c:if>
														</c:forEach>
													</c:forEach></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /.box-body -->
								<div class="box-footer">
									<jsp:include page="/WEB-INF/view/common/admin/crud/buttons.jsp"></jsp:include>
								</div>
								<!-- /.box-footer -->
							</div>
							<!-- /.box -->
						</div>
					</div>
				</la:form>
			</section>
		</div>
		<jsp:include page="/WEB-INF/view/common/admin/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/WEB-INF/view/common/admin/foot.jsp"></jsp:include>
</body>
</html>
