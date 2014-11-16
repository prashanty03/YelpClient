<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="vo.ElementVO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="js" xmlns:fb="http://www.facebook.com/2008/fbml">
	<!--<![endif]-->
	<head>
		<title>Elements| Yelp</title>
		<link href="../stylesheets/style.css" media="all" type="text/css" rel="stylesheet">
		<link href="../stylesheets/review.css" media="all" type="text/css" rel="stylesheet">
		<link href="../stylesheets/writeareview_search.css" media="all" type="text/css" rel="stylesheet">
		
	</head>
	<body class="country-us logged-in jquery" id="yelp_main_body">
	<%
    String email = (String)session.getAttribute("email"); 
	System.out.println("adsad"+email);
    if(email==null)
    {
        response.sendRedirect("login.jsp");
    }
	else{ %>
		<div id="fb-root" class=" fb_reset">
			<div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
				<div><iframe frameborder="0" name="fb_xdm_frame_https" allowtransparency="true" scrolling="no" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" style="border: medium none;" src="https://s-static.ak.facebook.com/connect/xd_arbiter/KFZn1BJ0LYk.js?version=41#channel=f27a0c8ce5f15e&amp;origin=https%3A%2F%2Fwww.yelp.com"></iframe></div>
			</div>
			<div style="position: absolute; top: -10000px; height: 0px; width: 0px;">
				<div></div>
			</div>
		</div>
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
			<div id="print-masthead">
				<img alt="Yelp" class="print-bkg-img" src="https://s3-media2.fl.yelpcdn.com/assets/2/www/img/b7e9d647188d/gfx/header_print.gif">
			</div>
			<span class="offscreen" id="page-content">&nbsp;</span>
			<div id="super-container">
				<div id="alert-container">
					<div class="alert alert-error">
						<a href="Categories?action=home">
							Categories&nbsp;
						</a>
						> <%=(String)request.getAttribute("catName") %>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%if(session.getAttribute("isAdmin").equals("Y")){%>
							<a id="header-sign-up" href="AddElement?categoryName=<%=(String)request.getAttribute("catName")%>&action=add">Add Element</a>
							<%}%>
					</div>
				</div>
				<div id="maplayout" class="container">
					<div class="ieSucks clearfix" id="businessresults_top">
						<div class="ytype">
						</div>
					</div>
					<div id="searchPanelContainer" class="clearfix layout-block layout-a layout-border">
					
						<div id="light3" class="white_content">
							<div class="column column-alpha ">
								<form action="http://localhost:4300/deleteElement" id="login-form" method="GET" name="login_form">
									<h2 align="center">Are you sure you want to delete this element?</h2>
									<p align="center"><button class="ybtn ybtn-primary ytype submit" value="submit" type="submit"><span>Yes</span></button> &nbsp;&nbsp;&nbsp;<a class="ybtn ybtn-primary header-button sign-up" id="header-sign-up" onclick = "document.getElementById('light3').style.display='none';document.getElementById('fade2').style.display='none'">No</a></p>
								</form>
							</div>
						</div>
						<div id="fade2" class="black_overlay"></div>
							<div id="businessresults">
								<ul><%ElementVO[] elementVOs = (ElementVO[])request.getAttribute("elementVOs"); %>
									<%if(elementVOs!=null){ %>
									<% for(int i = 0;i < elementVOs.length ;i++) { %>
									<li data-key="1" class="clearfix business-summary" data-component-bound="true">
										<div class="war-businessresult businessresult">
											<div class="leftcol">
												<div class="itemheading">
													<a href="GetReviews?elemName=<%=elementVOs[i].getName()%>&catName=<%=(String)request.getAttribute("catName")%>&action=list" id="bizTitleLink0"><%=i+1%>.&nbsp;<%=elementVOs[i].getName()%> 
													</a>
												</div>
												<div class="itemneighborhoods">
													Description: <%=elementVOs[i].getDescription() %>
												</div>
											</div>
											<div class="leftcol">
												<div class="rating">
												<%for(int j = 0; j<elementVOs[i].getRating() ; j++){%>
												<img src="../images/star.png">
												<%}%>
											</div>
												<em class="smaller"><%=elementVOs[i].getCount()%> reviews</em>
												<address>
													<%=elementVOs[i].getAddress()%>
												</address>
											</div>
											<div class="leftcol">
												<a class="ybtn ybtn-small" href="AddReview?elemName=<%=elementVOs[i].getName()%>&catName=<%=(String)request.getAttribute("catName")%>&action=write"><span class="i-wrap ig-wrap-common i-review-star-tiny-common-wrap write-a-review"><i class="i ig-common i-review-star-tiny-common"></i> Write a Review</span></a>
											</div>
											<div align="right">
												<%if(session.getAttribute("isAdmin").equals("Y")){%>
												<a href="AddElement?categoryName=<%=(String)request.getAttribute("catName")%>&action=add"><img src="../images/edit.png"/></a>&nbsp;&nbsp;
												<a href="javascript:void(0)" onclick = "document.getElementById('light3').style.display='block';document.getElementById('fade2').style.display='block'" ><img src="../images/delete.png"/></a>
												<%}%>
											</div>
										</div>
									</li>
									<%}%>
									<br clear="all">
									<%} else {%>
									<h2>No elments defined</h2>
									<%} %>
								</ul>
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
		<%} %>
	</body>
</html>

