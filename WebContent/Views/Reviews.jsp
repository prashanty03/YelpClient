<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.ReviewVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="js" xmlns:fb="http://www.facebook.com/2008/fbml">
	<!--<![endif]-->
	<head>
		<title>Reviews | Yelp</title>
		<link href="../stylesheets/style.css" media="all" type="text/css" rel="stylesheet">
		<link href="../stylesheets/review.css" media="all" type="text/css" rel="stylesheet">
		<link href="../stylesheets/writeareview_search.css" media="all" type="text/css" rel="stylesheet">
		<style type="text/css">
			#businessresults .leftcol {float:left; width:270px;}
			#businessresults .rightcol {float:left; width: 200px;}
			#businessresults .ybtn{float: right;}
			#businessresults .itemcategories {width:260px;}
			#businessresults .itemneighborhoods {width:260px;}
			.fs_pagination_controls{clear:left;}
			#loading_bg, #loading_animation{top:2px}
		</style>
	
	</head>
	<body class="country-us logged-in jquery" id="yelp_main_body">
	<%
    String email = (String)session.getAttribute("email"); 
    if(email==null)
    {
        response.sendRedirect("login.jsp");
    }
	else{ %>
		<div class="lang-en" id="wrap">
			<div>
				<div class="app-header">
					<div class="header-container clearfix">
						<h1 class="logo">
							<a href="Categories?action=home">Yelp</a>
						</h1>
						<div class="header-account webview-hidden">
							<ul class="logged-out-nav">
								<li>
									<a class="ybtn ybtn-primary header-button sign-up" id="header-sign-up" href="Logout">Log out</a>
								</li>
								<li style="color:white">
									Welcome <%= session.getAttribute("firstName") %>, Last Login : <%= session.getAttribute("lastLogin") %>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="super-container">
				<div id="alert-container">
					<span class="offscreen">Error message:</span>
					<div class="alert alert-error">
						<a href="Categories?action=home">
							Categories&nbsp;
						</a>
						> 
						<a href="Categories?categoryName=<%=(String)request.getAttribute("catName")%>"><%=(String)request.getAttribute("catName")%></a> > <%=(String)request.getAttribute("elemName") %>
					</div>
				</div>
				<div class="container review_rate usd">
					<div class="clearfix layout-block layout-a layout-border">
						<div id="biz_reviews" class="column column-beta ">
							<h3>Reviews submitted </h3>
							<div id="biz_reviews_list" class="">
								<ul><%ReviewVO[] reviews = (ReviewVO[])request.getAttribute("reviews"); %>
									<%if(reviews!=null){ %>
									<%for(int i = 0; i< reviews.length; i++) {%>
									<li>
										<div class="photo-box pb-xss">
											<a href="#">
											<img src="../images/user.png" class="photo-box-img" alt="">
											</a>
										</div>
										<a href="#"><%=reviews[i].getEmail()%></a>
										<div class="formNote">
											<div class="rating">
												<%for(int j = 0; j<reviews[i].getRating() ; j++){%>
												<img src="../images/star.png">
												<%}%>
											</div>
											<%=reviews[i].getSubmittedOn()%>
										</div>
										<p class="nobtm comment">
											<%=reviews[i].getComment()%>
										</p>
									</li>
									<%}%>
									<%} else {%>
									<h2>No reviews submitted</h2>
									<%} %>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="footer-wrap">
					<div class="footer-menu-wrap clearfix">
						<div class="city-landscape-img"></div>
						<div class="footer-copyright">
							<small>
							Copyright &copy; 2004&ndash;2014 Yelp Inc. Yelp, <img class="footer-copyright-logo" alt="Yelp logo" src="https://s3-media4.fl.yelpcdn.com/assets/2/www/img/9d213bfb766e/logo/logo_tiny.png">, <img class="footer-burst-logo" alt="Yelp burst" src="https://s3-media3.fl.yelpcdn.com/assets/2/www/img/86ec59fef415/logo/burst_tiny.png"> and related marks are registered trademarks of Yelp.
							</small>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%} %>
	</body>
</html>