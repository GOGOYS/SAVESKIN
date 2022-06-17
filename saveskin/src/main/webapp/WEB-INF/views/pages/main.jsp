<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${rootPath}/static/css/mainpage.css?ver=2022-06-16-100">


<div id="search-background">
	<form id="search" class="searchform" method="POST">
		<ul>
			<li><input class="search1" type="text" name="search" placeholder="어떤 정보를 찾으시나요?" />
			</li>
			<li>
				<button class="recall_search" id="searchalertStart">
					<i id="icon" class="fa-solid fa-magnifying-glass fa-lg"></i>
				</button>
			</li>
			<li id="recall-box-wrap">
				<div id="recall-box">
					<c:forEach items="${RECALLS}" var="RECALL" varStatus="INDEX">
							<a>&lt;${INDEX.count}&gt; ${RECALL.productNm}</a>
					</c:forEach>
				</div>
			</li>
		</ul>
	</form>
</div>

<script src="${rootPath}/static/js/mainsearch.js?ver=2022-06-16-001"></script>

