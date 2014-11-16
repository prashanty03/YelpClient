<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="js" xmlns:fb="http://www.facebook.com/2008/fbml">
	<!--<![endif]-->
	<head>
		<style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style>
		<style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}</style>
		<title>Add Category | Yelp</title>
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
		<script type="text/javascript"></script>
		
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
		<div class="lang-en" id="wrap">
			<div>
				<div class="app-header">
					<div class="header-container clearfix">
						<h1 class="logo">
							<a href="Categories?action=home">
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
				</div>
				<div class="container review_rate usd">
					<div class="clearfix layout-block layout-a layout-border">
						<div class="column column-alpha ">
							<form name="review_rate_form" method="POST" id="review_rate_form" action="AddElement?action=save">
								<input type="hidden" name="categoryName" value="<%=(String)request.getAttribute("catName") %>">
								<div class="clearfix" id="war-header">
									<h2>
										<strong>
										<a href="Categories?categoryName=<%=(String)request.getAttribute("catName")%>"> <%=(String)request.getAttribute("catName")%> </a> > New Element:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%if(request.getAttribute("msg")!=null)%><%= (String)request.getAttribute("msg") %>
										</strong>
									</h2>
								</div>
								<ul class="write-a-review clearfix">
									<li class="review-element">
										<div id="field-star-rating">
											<fieldset>
												<legend class="offscreen">Rating</legend>
												<ul>
													<li class="voteable-attribute clearfix">
														<label class="formField">
														Element Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														</label>
														<label>
														<input type="text" value="" size="100" maxlength="100" required="required" name="name" id="name">
													</li>
												</ul>
											</fieldset>
										</div>
									</li>
									<li class="review-element">
										<label for="review-text" class="primary">
										<strong>        Description
										</strong>
										<br>
										<br>
										</label>
										<div class="primary">
											<textarea name="description" required="required" id="review-text" class="form400 default_valued_text_field" rows="8" cols="30" style="height: 115px;"></textarea>
											
										</div>
									</li>
									<li class="voteable-attribute clearfix">
														<label class="formField">
														Address  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														</label>
														<label>
														<input type="text" value="" size="100" maxlength="100" required="required" name="address" id="name">
									</li>
								</ul>
								<div class="clearfix" id="review_rate_form_footer">
									<p class="clearfix">
										<a href="Categories?categoryName=<%=(String)request.getAttribute("catName")%>">Cancel</a>
										<input type="hidden" id="rating-form-action" value="submit" name="action_submit">
										<button class="ybtn ybtn-primary ybtn-small" value="submit" type="submit" id="review-submit-button"><span>Create</span></button>
									</p>
								</div>
							</form>
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