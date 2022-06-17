<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${rootPath}/static/css/mainpage.css?ver=2022-06-16-100">

<section>
	<article>
		<div class="table-title">
			<h1>리콜 제품 리스트</h1>
			<a href="${rootPath}/recall/recall_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>

			<table class="recalls">
				<c:forEach items="${RECALLS}" var="RECALL">
					<tr  data-recallsn="${RECALL.recallSn}">
						<td>${RECALL.productNm}</td>
						<td>${RECALL.recallPublictBgnde}</td>
					</tr>
				</c:forEach>
			</table>


	</article>
	<article>
		<div class="table-title">
			<h1>제조업 정보조회 리스트</h1>
			<a href="${rootPath}/recall/recall_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>

				<table class="infos">
					<c:forEach items="${INFOLIST}" var="INFO">
		
						<tr data-entp_seq="${INFO.ENTP_SEQ}">
							<td>${INFO.ENTP_NAME}</td>
							<td>${INFO.ENTP_PERMIT_DATE}</td>
						</tr>
					</c:forEach>
				</table>
		
	</article>
	<article>
		<div class="table-title">
			<h1>커뮤니티</h1>
			<a href="${rootPath}/board/board_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>
			<table class="board-table">
				<c:forEach items="${BOARDLIST}" var="BOARDLIST" varStatus="INDEX">
						<tr data-b_num="${BOARDLIST.b_num}">
							<td style="width: 30px; text-align: center;">${INDEX.count}</td>
							<td>${BOARDLIST.b_title}</td>
							<td style="width: 40px; text-align: right; padding-right:5px;">${BOARDLIST.b_hit}</td>
						</tr>
					</c:forEach>
				</table>
	</article>
</section>

<script src="${rootPath}/static/js/main.js?ver=2022-06-16-006"></script>

