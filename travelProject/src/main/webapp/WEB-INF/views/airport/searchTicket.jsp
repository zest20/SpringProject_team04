<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.search_field{
	border:1px;
	background: #EAEAEA;
	width: 1200px;
	height: 220px;
	margin: 0 auto;
}

.trip {
	width : 80px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.round_trip {
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
}
.round_trip:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}
.oneway {
	
	display: inline-block;
	width: 40px;
	height: 20px;
	text-align: center;
	font-size: 18px;
	margin-left: 5px;
}
.oneway:hover{
	text-decoration: underline;
    color:blue;
    cursor: pointer;
}

.start_end {
	
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin: 0 0 15px 30px;
}

.starting {
	width:370px;
	height: 60px;
}

.ending {
	margin-right:255px;
	width:370px;
	height: 60px;
}

.date{
	width : 1140px;
	height: 62px;
	display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    align-content: center;
    justify-content: space-between;
    align-items: center;
    margin-left: 30px;
}

.dates_start_check{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
}
.dates_start_end {
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}
.ppl_check {
	display:inline-block;
	width: 410px;
	height: 62px;
	text-align: center;
	margin-left: 50px;
	background: white;
	border: 1px solid black;
}

.dates_start_oneway{
	display:inline-block;
	width: 370px;
	height: 62px;
	text-align: center;
	margin-right: 40px;
}



.air_search{
	display:inline-block;
	width: 161px;
	height: 62px;
	text-align: center;
	color:white;
    background-color: #1E9EED;
    border: 1px solid #1E9EED;
    padding: 0.5rem;
    line-height: 1rem;
    border-radius: 0.5rem;
    font-size: 18px;
    font-weight: bold;
}
.air_search:hover{
	cursor: pointer;
}

/*모달  */

	.entire {
		margin-top: 60px;
	}
	.modal_wrap {
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 25%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .modal_wrap2{
        display: none;
        width: 500px;
        height: 450px;
        position: absolute;
        top: 135%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    
    .modal_wrap3{
        display: none;
        width: 500px;
        height: 550px;
        position: absolute;
        top: 145%;
        left: 60%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 999;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg2{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    .black_bg3{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 30000px;
        background-color:rgba(0, 0,0, 0.2);
        top:0;
        left: 0;
        z-index: 1;
    }
    
    .select_area{
    	margin-left: 30px;
    }
    
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close2{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close3 {
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    
    .modal_close> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close2> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    
    .modal_close3> span{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }
    .modal_close_country{
    	border: 1px solid black;
    	width : 400px;
		display: flex;
	    flex-direction: row;
	    flex-wrap: nowrap;
	    align-content: center;
	    justify-content: space-between;
	    align-items: center;
	    margin-left: 30px;
	    margin-top: 10px;
    }
    .modal_close_country_1{
    	border-right: 1px solid black;
    }
    
    .modal_close_country_1 > ul > li  {
    	/* border: 1px solid gray; */
    	border-collapse:collapse;
     	width:200px;
     	height: 60px;
     	list-style: none;
     	display:inline-block;
     	margin-left: 10px;
     	
  
    }
    ul {
    	padding-left: 0px;
    	list-style: none;
    }
    
    .modal_close_country_2{
    	width:200px;
    }
    .modal_close_country_2 > ul > li {
    	border-collapse:collapse;
    	display:inline-block;
     	width:200px;
     	height: 53px;
     	list-style: none;
     	text-align: center;
     	margin-right: 10px;
     	
    }
    
     #a {
    	cursor: pointer;
		
    }
    
     #a:hover {
    	color:red;
    }
    
    
/* 인원 선택 버튼 부분 */
.member_count {
    min-height: 50px;
}

.member_count_entire {
	margin-top: 40px;
	margin-left: 20px;
}

.ppl_select{
	margin-left: 7px;
	font-size: 20px;
	
}

.seat_select{
	margin-left: 7px;
	font-size: 20px;
}
.member_count ul {
    margin: 0;
}
.member_count ul li {
    height: 39px;
}
.member_count li:not(:first-child) {
    margin-top: 30px;
}
p {
    line-height: 1.5;
}
.member_count .tit {
    float: left;
    width: 55%;
    margin: 0;
    color: #111;
    margin-top: 10px;
}
.member_count p.tit {
    text-align: left;
    font-size: 14px;
    color: #333;
}
span.txt {
    position: relative;
}
.member_count .tit .txt {
    margin: 0;
    font-size: 13px;
    line-height: 1;
    top: -3px;
}
.member_count p.tit .txt {
    text-align: left;
    font-size: 13px;
    color: #888;
    top: 0;
    left: 10px;
}
.member_count .price {
    display: block;
    font-size: 17px;
    font-weight: 600;
    line-height: 1;
}

/* 버튼 */
button {
    background-color: #fff;
}
.num_count_group {
    display: inline-block;
    width: 114px;
    height: 38px;
    border: 1px solid #c3c3c3;
    border-radius: 2px;
    margin-top: 10px;
}
.num_count_group button:after {
    width: 26px;
    height: 27px;
}
.num_count_group .btn_decrement:after {
    display: inline-block;
    content: '';
    background-image: url(icon_minus.png);
    background-repeat: no-repeat;
    background-position: 0px 0px;
}
.num_count_group .btn_increment:after {
    display: inline-block;
    content: '';
    background-image: url(icon_plus.png);
    background-repeat: no-repeat;
    background-position: 0px 0px;
}

/* 다운 버튼 */
.num_count_group button {
    float: left;
    width: 35px;
    height: 36px;
    padding: 5px 5px 4px;
}
.num_count_group .btn_decrement {
    border: none;
    border-right: 1px solid #ddd;
}
.num_count_group .btn_decrement:hover {
    cursor: pointer;
}

/* 인원 카운트 */
.num_count_group .inpt_counter {
    float: left;
    display: block;
    font-size: 15px;
    color: #111;
    width: 33px;
    height: 36px;
    line-height: 34px;
    text-align: center;
    margin: 0 4px;
}

/* 업 버튼 */
.num_count_group .btn_increment {
    float: right !important;
    border: none;
    border-left: 1px solid #ddd;
}
.num_count_group .btn_increment:hover {
    cursor: pointer;
}


/* member_count float 해제부분 */
.member_count:after {
    display: block;
    clear: both;
    content: '';
}


.select_complete{
	border: 1px solid #5E2BB8;
	background: #5E2BB8;
	width: 130px;
	height: 36px;
	color: white;
	text-align: center;
	line-height: center;
	margin-left: 300px;
	font-size: 20px;
}
.select_complete_text:hover {
	cursor: pointer;
	color:red;
}
   
   
</style>
</head>
<body>
<!--배너 부분  -->
<div id="banner">
		<jsp:include page="./banner.jsp"></jsp:include>
	</div><!-- banner -->
<!--티켓 검색부분  -->
<div class="search_field">
	<div class="trip">
		<div class="round_trip">
		     왕복
		</div>
		<div class="oneway">
		     편도
		</div>
	</div>	
		<div class="start_end">
				<!--왕복 모달시작  -->
				 <input type="text" id="modal_btn" class="starting" data-toggle="modal" data-target="#exampleModalCenter" placeholder="인천">
				 <input type="hidden" value="" class="starting_hidden">	
					<div class="black_bg"></div>
						<div class="modal_wrap">
						    <div class="modal_close"><span>close</span></div>
						    <div class="entire">
							    <span class="select_area">지역을 선택해주세요.</span>
							    <div class="modal_close_country">
							    	<div class="modal_close_country_1">
								        <ul>
								        	<li id="korea"><span id="a">국내</span></li>
								        	<li id="thailand"><span id="a">태국</span></li>
								        	<li id="japan"><span id="a">일본</span></li>
								        	<li id="china"><span id="a">중국</span></li>
								        </ul>
								    </div>
								    <div class="modal_close_country_2">
								        <ul>
								        	<%-- <c:forEach var="city" items="${city}"> DB에 있는 도시를 가져와서 돌리세요--%>
								        	<li id="jeju" value="제주"><span id="a">제주</span></li>
								        	<li id="busan" value="부산"><span id="a">부산</span></li>
								        	<li id="yeosu" value="여수"><span id="a">여수</span></li>
								        	<li id="incheon" value="인천"><span id="a">인천</span></li>
								        	<%-- </c:forEach> --%>
								        </ul>
								    </div>     
							        
							    </div> <!-- modal_close_country_1 -->
							</div>
			    		</div>    <!--모달끝  --> 
			
				<div>
					<img class="change" src="airport/img/change.png" width="15px" height="15px">
				</div>
			<div>
				<!-- <input type="text" class="ending" placeholder="도착지"> -->
				<input type="text" id="modal_btn2" class="ending" data-toggle="modal" data-target="#exampleModalCenter" placeholder="도착지">
				 <input type="hidden" value="" class="ending_hidden">	
					<div class="black_bg2"></div>
						<div class="modal_wrap2">
						    <div class="modal_close2"><span>close</span></div>
						    <div class="entire">
							    <span class="select_area">지역을 선택해주세요.</span>
							    <div class="modal_close_country">
							    	<div class="modal_close_country_1">
								        <ul>
								        	<li id="korea"><span id="a">국내</span></li>
								        	<li id="thailand"><span id="a">태국</span></li>
								        	<li id="japan"><span id="a">일본</span></li>
								        	<li id="china"><span id="a">중국</span></li>
								        </ul>
								    </div>
								    <div class="modal_close_country_2">
								        <ul>
								        	<%-- <c:forEach var="city" items="${city}"> DB에 있는 도시를 가져와서 돌리세요--%>
								        	<li id="jeju2" value="제주"><span id="a">제주</span></li>
								        	<li id="busan2" value="부산"><span id="a">부산</span></li>
								        	<li id="yeosu2" value="여수"><span id="a">여수</span></li>
								        	<li id="incheon2" value="인천"><span id="a">인천</span></li>
								        	<%-- </c:forEach> --%>
								        </ul>
								    </div>     
							        
							    </div> <!-- modal_close_country_1 -->
							</div>
			    		</div>    <!--모달끝  --> 
			</div>
		</div>
		<div class="date">
			<div class="date_start">
				<input type="date" name="dates_start_check" value="" id="dates_start_check" class="dates_start_check">
			</div>
			<div class="date_end">
				<input type="date" name="dates_start_end" value=""  id="dates_start_end" class="dates_start_end">
			</div>
			<div class="date_oneway">
				<input type="date" name="dates_start_oneway" value=""  id="dates_start_oneway" class="dates_start_oneway">
			</div>
			<div class="ppl">
				<button type="button" id="modal_btn3" class="ppl_check" data-toggle="modal" data-target="#exampleModalCenter"><span class="ppl_check_text">성인 1명 / 일반석</span></button>
				<div class="black_bg3"></div>
				<div class="member_count modal_wrap3">
					<div class="modal_close3"><span>close</span></div>
					<div class="member_count_entire">
					<span class="ppl_select">인원</span><hr width="460px">
						<ul>
							<li>
								<p class="tit">
                                            <span class="txt">성인</span><br>
                                        </p>
                                        <span class="num_count_group">
                                            <button class="btn_decrement down"><img src="airport/img/minus.png"></button>
                                            <span class="inpt_counter adultCnt"></span>
                                            <button class="btn_increment up"><img src="airport/img/plus.png"></button>
                                        </span>
							</li>
							<!--  아동
								<li>
                                     <p class="tit">
                                            <span class="txt">아동</span>
                                     </p>
                                        <span class="num_count_group">
                                            <button class="btn_decrement down"><img src="../upload/minus.png"></button>
                                            <span class="inpt_counter childCnt"></span>
                                            <button class="btn_increment up"><img src="../upload/plus.png"></button>
                                       </span>
                             </li> -->
						</ul>
						<br><br>
						<p class="seat_select">좌석등급</p><hr width="460px">
						<label><input type="radio" value="일반석" name="radio_seat" class="radio_seat">  일반석</label><p>
						<label><input type="radio" value="비즈니스석" name="radio_seat" class="radio_seat">  비즈니스석</label><p>
						<label><input type="radio" value="일등석" name="radio_seat" class="radio_seat">  일등석</label>
						<input type="hidden" value="">
						<p><img src="airport/img/caution.png" width="20px" height="15px">  예약 가능 최대 인원은 9명입니다.</p>
						<div class="select_complete"><span class="select_complete_text">선택완료</span></div>
					</div>	
				</div>
				
			</div>
			<div class="search">
				<input type="text" class="air_search" value="항공권 검색">
			</div>
		</div>
</div>



<!-- 바디부분 -->
<!-- 이번주 베스트 Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>FEATURED TOURS Packages</span>
                            <h2>Weekly Best</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 이번주 베스트 End  -->
        
        <!-- 테마 추천 Start -->
        <div class="favourite-place place-padding">
            <div class="container">
                <!-- Section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle text-center">
                            <span>FEATURED TOURS Packages</span>
                            <h2>Weekly Best</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="single-place mb-30">
                            <div class="place-img">
                                <img src="assets/img/service/services1.jpg" alt="">
                            </div>
                            <div class="place-cap">
                                <div class="place-cap-top">
                                    <span><i class="fas fa-star"></i><span>4.5점</span> </span>
                                    <h6><a href="#">서유럽 3국 (프랑스/스위스/이탈리아) 8~12일 #베스트셀러</a></h6>
                                    <h6>프랑스, 스위스, 이탈리아 핵심관광</h6>
                                    <p class="dolor">18700원</p>
                                </div>
                                <div class="place-cap-bottom">
                                    <ul>
                                        <li><i class="far fa-clock"></i>3 Days</li>
                                        <li><i class="fas fa-map-marker-alt"></i>프랑스, 스위스</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- 테마 추천 End -->


<script type="text/javascript">
	
////////////////////////출발지역 또는 도착지역 모달창 클릭시 모달실행///////////////////////
	function onClick() {
	    document.querySelector('.modal_wrap').style.display ='block';
	    document.querySelector('.black_bg').style.display ='block';
	    
	}
	function onClick2() {
	    document.querySelector('.modal_wrap2').style.display ='block';
	    document.querySelector('.black_bg2').style.display ='block';
	    
	}
	
	
	function offClick() {
	    document.querySelector('.modal_wrap').style.display ='none';
	    document.querySelector('.black_bg').style.display ='none';
	    
	}
	
	function offClick2() {
	    document.querySelector('.modal_wrap2').style.display ='none';
	    document.querySelector('.black_bg2').style.display ='none';
	    
	}
	
	document.getElementById('modal_btn').addEventListener('click', onClick);
	document.getElementById('modal_btn2').addEventListener('click', onClick2);
	document.querySelector('.modal_close').addEventListener('click', offClick);
	document.querySelector('.modal_close2').addEventListener('click', offClick2);
	//////////////////////////////////////////////////////////////////////////
	
//////////////////////////출발지 선택시 값들어가게하는 함수////////////////////
	$(function(){

		  $("#jeju").click(function(){
		    	$(".starting").val("제주");
		    });
		  $("#busan").click(function(){
		    	$(".starting").val("부산");
		    });
		  $("#yeosu").click(function(){
		    	$(".starting").val("여수");
		    });
		  $("#incheon").click(function(){
		    	$(".starting").val("인천");
		    });
		  
	});
//////////////////////////////////////////////////////////////////////////

//////////////////////////도착지 선택시 값들어가게하는 함수////////////////////	
	$(function(){

		  $("#jeju2").click(function(){
		    	$(".ending").val("제주");
		    });
		  $("#busan2").click(function(){
		    	$(".ending").val("부산");
		    });
		  $("#yeosu2").click(function(){
		    	$(".ending").val("여수");
		    });
		  $("#incheon2").click(function(){
		    	$(".ending").val("인천");
		    });
		  
	});
//////////////////////////////////////////////////////////////////////////	

///////////바꾸는 사진클릭시 출발지와 도착지 서로 바뀌는 함수(hidden값으로 잡혀있는도시코드도 바꿔주는)////////////
	$(function(){
		$('.change').click(function(){
			var starting = $(".starting").val();
			var ending = $(".ending").val();
			var starting_hidden = $(".starting_hidden").val();
			var ending_hidden = $(".ending_hidden").val();
			
			
			$(".starting").val(ending);
			$(".starting_hidden").val(ending_hidden);
			$(".ending").val(starting);
			$(".ending_hidden").val(starting);
			
		});
	});
///////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////인원수와 좌석선택 모달/////////////////////////////////
	function pplOnClick() {
	    document.querySelector('.modal_wrap3').style.display ='block';
	    document.querySelector('.black_bg3').style.display ='block';
	    
	}
	
	function pplOffClick() {
	    document.querySelector('.modal_wrap3').style.display ='none';
	    document.querySelector('.black_bg3').style.display ='none';
	    
	}
	
	document.getElementById('modal_btn3').addEventListener('click', pplOnClick);
	document.querySelector('.modal_close3').addEventListener('click', pplOffClick);
///////////////////////////////////////////////////////////////////////////////

////////////////////////인원수 선택 모달///////////////////////////////////////
$(function() {
            // 인원 수 버튼 증감 및 총 금액 부분의 합계 script 부분
            let adultCnt = $('.adultCnt');
            let childCnt = $('.childCnt');

                // 업 버튼 / 다운 버튼
            let up = $('.up');
            let down = $('.down');

                // 성인 가격 / 아동 가격 (서버에서 받아와야 함 - 우선 하드코딩)
            let adultPrice;
            let childPrice;
                // 총 금액 
            let totalPay = $('.con');

                // 인원 수 기본 설정
            adultCnt.text("1");
            childCnt.text("0");

                // 총 금액 기본 설정 (서버에서 받아와야 함 - 우선 하드코딩)
            //totalPay.html('789,000<em>원</em>');

            up.on('click', function() {
                // 누른 버튼 구분 (up / down)
                let isUp = $(this).hasClass('up');

                // 클릭 했을 때의 인원 수
                let cnt = Number($(this).siblings('span').text());
                console.log(cnt);

                // 클릭 했을 때의 전체 인원 수 (패키지 상세 인원 제한을 위한 변수)
                let totalCnt = Number(adultCnt.text()) + Number(childCnt.text());

                // 클릭 했을 때 성인 / 아동 구분
                let isAdult = $(this).siblings('span').hasClass('adultCnt');
                console.log(isAdult);

                // 성인 / 아동 , up / down 구분
                if(isAdult && !isUp) {
                    console.log('성인 down');
                } else if(isAdult && isUp) {
                    console.log('성인 up');
                    // 개수 제한 거는 부분.. (패키지 상세의 인원제한)
                    if(totalCnt >= 9) {
                        return;
                    } else {
                        cnt += 1;
                        adultCnt.text(cnt);
                    }
                } else if(!isAdult && !isUp) {
                    console.log("아동 down");
                } else if(!isAdult && isUp){
                    console.log('아동 up');
                    // 개수 제한 거는 부분.. (패키지 상세의 인원제한)
                    if(totalCnt >= 9) {
                        return;
                    } else {
                        cnt += 1;
                        childCnt.text(cnt);
                    }
                }
            });

            down.on('click', function() {
                // 누른 버튼 구분 (up / down)
                let isUp = $(this).hasClass('up');

                // 클릭 했을 때의 인원 수
                let cnt = $(this).siblings('span').text();
                console.log(cnt);

                // 클릭 했을 때 성인 / 아동 구분
                let isAdult = $(this).siblings('span').hasClass('adultCnt');
                console.log(isAdult);

                // 성인 / 아동 , up / down 구분
                if(isAdult && !isUp) {
                    console.log('성인 down');
                    if(cnt <= 1) {
                        return;
                    }
                    else {
                        cnt -= 1;
                        adultCnt.text(cnt);
                    }
                } else if(isAdult && isUp) {
                    console.log('성인 up');
                } else if(!isAdult && !isUp) {
                    console.log("아동 down");
                    if(cnt <= 0) {
                        return;
                    }
                    else {
                        cnt -= 1;
                        childCnt.text(cnt);
                    }
                } else if(!isAdult && isUp){
                    console.log('아동 up');
                }
            });
        });
///////////////////////////////////////////////////////////////////////////////////

/////////////////////////////성인과 좌석 선택시 값이 들어아게하는 함수///////////////////////////////
$(function(){
	 $(".select_complete").click(function(){
	    	var count = $(".inpt_counter").text();
	    	var seat = $(".radio_seat:checked").val();
	    	
	    	$(".ppl_check_text").text("");
	    	$(".ppl_check_text").text("성인"+ count+"명 / "+seat);
	    	
	    });
});
//////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////날짜 /////////////////////////////
$('.air_search').click(function(){

  var dateFrom = document.getElementById('dates_start_check');	//시작일
  var dateTo = document.getElementById('dates_start_end');	//종료일
  var today = new Date();				//오늘 날짜

  dateFrom = new Date(dateFrom.value);
  var fromYear = dateFrom.getFullYear();
  var fromMonth = dateFrom.getMonth() + 1;
  var fromDay = dateFrom.getDate();

  //날짜 지정을 하지 않았을 때 NaN이 발생하여 0으로 처리
  if (isNaN(fromYear) || isNaN(fromMonth) || isNaN(fromDay)){
    fromYear  = 0;
    fromMonth = 0;
    fromDay   = 0;
  }

	dateFrom = fromYear +'/'+ fromMonth +'/'+fromDay; 

  dateTo = new Date(dateTo.value);
  var toYear  = dateTo.getFullYear();
  var toMonth = dateTo.getMonth() + 1;
  var toDay   = dateTo.getDate();

  //날짜 지정을 하지 않았을 때 NaN이 발생하여 0으로 처리
  if (isNaN(toYear) || isNaN(toMonth) || isNaN(toDay)){
  toYear  = 0;
  toMonth = 0;
  toDay   = 0;
  }

    dateTo = toYear +'/'+ toMonth +'/'+toDay;

  //오늘날짜 날짜 형식으로 지정
  var todayYear  = today.getFullYear(); 	//2020
  var todayMonth = today.getMonth() + 1;    	//06
  var todayDay   = today.getDate();  		//11
  today = todayYear +'/'+ todayMonth +'/'+todayDay;  // 2020/06/11 (형식 지정은 본인 자유)

  //날짜 조회 시, 시작일이 오늘 날짜보다는 크고, 종료일이 시작일보다는 커야하기 때문에 조건을 걸어줌
  if(dateFrom >= today && dateTo >= dateFrom){
  	return true;
  } else {
 	 alert("올바른 날짜를 선택하세요.");
  }
});//click() end

////////////////////////////////편도클릭할때 편도날짜만 선택가능////////////////////////////
$(function(){
	$('.date_oneway').hide();
	
	$('.oneway').click(function(){
		$('.date_start, .date_end').hide();
		$('.date_oneway').show();
	});
	
	$('.round_trip').click(function(){
		$('.date_start, .date_end').show();
		$('.date_oneway').hide();
	});
});



</script>
</body>
</html>