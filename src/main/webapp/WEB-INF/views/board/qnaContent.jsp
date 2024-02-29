<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%// ServletContext를 사용하여 업로드 경로를 가져옴
   request.setCharacterEncoding("UTF-8");
   ServletContext context = request.getServletContext();
   String uploadPath = context.getRealPath("/images"); 
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${qnaTitle }&nbsp Q&A - MakUSwag</title>
<script>
    function confirmDelete(qnaSeq) {
        if (confirm("삭제 하시겠습니까?")) {
            window.location.href = "qnaDelete1?qnaSeq=${content_view.qnaSeq}"
        } else {
            // 사용자가 "아니오"를 선택한 경우 아무 작업도 수행하지 않습니다.
        }
    }
    
    function UpdateQna(qnaSeq){
    	if(confirm("수정 하시겠습니까?")){
    		window.location.href = "qnaUpdate?qnaSeq=${content_view.qnaSeq}"
    	}else{
    		// 사용자가 "아니오"를 선택한 경우 아무 작업도 수행 하지 않습니다.
    	}
    }
    
    window.onload = function() {
        var count = ${countResult};
        console.log(count);
        if(count==1){
        	var deleteButton = document.getElementById("deleteButton");
        	var updateButton = document.getElementById("updateButton");
            if (updateButton && deleteButton) {
            	deleteButton.style.display= "none";
                updateButton.style.display = "none";
                
                
            }
        }
    };
</script>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="icon" href="./images/CompanyLogo.png"> <!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->

			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="board">
				<div class="xans-element- xans-board xans-board-title board-header ">
				<h3 onclick="window.history.go(-1); return false;" style="cursor: pointer;"><font color="#555555">Q&A</font></h3><br><br>
				<h5>답변이 등록된 글은 수정,삭제가 불가능합니다.</h5>
				<h5>성의없는 글이나 부적절한 글일 경우 임의로 삭제되거나 수정될 수 있습니다</h5>
				
				</div>
						<div class="xans-element- xans-board xans-board-read ">
							<div class="post-header">
											<h3 class = "number">${content_view.qnaTitle }</h3>
											<div class="post-meta">
												<span class="date">${content_view.qnaDate }</span>
											</div>
										</div>
							<div class="post-content">
											<div class="content">
												<div class="images"></div>
												 <div class="article"><div class="fr-view fr-view-article"><p>${content_view.qnaContent }</p><br></div></div>
												<div><img src="${pageContext.request.contextPath}/images/board/${content_view.qnaImage}" alt="" width="100" height="100" style="${content_view.qnaImage != null ? '' : 'display: none;'}"></div>
											</div>
										</div>
							<div class="post-footer">
											<span class=""><a id="deleteButton" href="#" onclick="confirmDelete(${qnaSeq})" class="button" style="color:#0e3773;"><span>삭제</span></a></span>
    										<span class=""><a id="updateButton" href="#" onclick="UpdateQna(${qnaSeq})" class="button" style="color:#0e3773;"><span>수정</span></a></span>
										</div>
							</div>
				
				
				
				
				
				<!-- 여기까지 작성 -->

			<!-- ============================== [[ Body  section]] ==============================-->

			<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>