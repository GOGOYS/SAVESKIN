<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="${rootPath}/static/css/mainpage.css?ver=2022-06-10-006">

<div id="search-background">
	<div id="search">
		<ul>
			<li><input type="text" name="search" placeholder="어떤 정보를 찾으시나요?" />
			</li>
			<li>
				<button id="searchalertStart">
					<i id="icon" class="fa-solid fa-magnifying-glass fa-lg"></i>
				</button>
			</li>
			<li id="recall-box-wrap">
				<div id="recall-box">
					<c:forEach items="${RECALLS}" var="RECALL" varStatus="INDEX">

						<div data-recallsn="${RECALL.recallSn}">

							<a>&lt;${INDEX.count}&gt; ${RECALL.productNm}</a>
						</div>
					</c:forEach>
				</div>
			</li>
		</ul>
	</div>
</div>
<section>
	<article>
		<div class="table-title">
			<h1>리콜 제품 리스트</h1>
			<a href="${rootPath}/recall/recall_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>

		<c:forEach items="${RECALLS}" var="RECALL">
			<div data-recallsn="${RECALL.recallSn}">
				<table>
					<tr>
						<td>${RECALL.productNm}</td>
						<td>${RECALL.recallPublictBgnde}</td>
					</tr>
				</table>
			</div>
		</c:forEach>


	</article>
	<article>
		<div class="table-title">
			<h1>화장품 심사정보 리스트</h1>
			<a href="${rootPath}/info/info_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>
		<table>
			<tr>
				<td><a href="${rootPath}/info/info_detail">일리윤
						울트라 리페어 로션</a></td>
				<td><a href="${rootPath}/info/info_detail">2022-05-16</a></td>
			</tr>
			<tr>
				<td><a href="${rootPath}/info/info_detail">리바이탈
						라이징 수프림 플러스너리싱 앤...</a></td>

				<td><a href="${rootPath}/info/info_detail">2022-05-16</a></td>
			</tr>
			<tr>
				<td><a href="${rootPath}/info/info_detail">고원 까마중비누</a></td>
				<td><a href="${rootPath}/info/info_detail">2022-05-16</a></td>
			</tr>
			<tr>
				<td><a href="${rootPath}/info/info_detail">프렌비타스킨
						필터링 마스크 영양 필터링...</a></td>
				<td><a href="${rootPath}/info/info_detail">2022-05-16</a></td>
			</tr>
			<tr>
				<td><a href="${rootPath}/info/info_detail">네츄럴 헤나</a></td>
				<td><a href="${rootPath}/info/info_detail">2022-05-16</a></td>
			</tr>
		</table>
	</article>
	<article>
		<div class="table-title">
			<h1>커뮤니티</h1>
			<a href="${rootPath}/board/board_list">더보기<i
				class="fa-solid fa-angle-right"></i></a>
		</div>
		<div class="border-bottom"></div>
		<c:forEach items="${BOARDLIST}" var="BOARDLIST" varStatus="INDEX">
				<table>
					<tr>
						<td>${INDEX.count}</td>
						<td>${BOARDLIST.b_title}</td>
						<td>${BOARDLIST.b_hit}</td>
					</tr>
				</table>
		</c:forEach>
	</article>
</section>

