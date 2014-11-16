<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="js" xmlns:fb="http://www.facebook.com/2008/fbml">
	<!--<![endif]-->
	<head>
		<style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style>
		<style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}</style>
		<title>Write a Review | Yelp</title>
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
							<form name="review_rate_form" method="POST" id="review_rate_form" action="PostReview?action=post">
								<input type="hidden" value="ed91ac8696d39300328e3ecb0b3c363af64b13398f304fc9831c9d684e3179da" class="csrftok" name="csrftok">
								<input type="hidden" value="/biz/eXprR2i_W8UKMmsYYbZFQQ" name="return_url">
								<div class="clearfix" id="war-header">
									<h2>
										<strong>
										Complete Your Review:
										</strong>
										<a href="#"><%=(String)request.getAttribute("elemName")%></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%if(request.getAttribute("message")!=null)%><%= (String)request.getAttribute("message") %>
									</h2>
								</div>
								<ul class="write-a-review clearfix">
									<input type="hidden" value="<%=(String)request.getAttribute("elemName")%>" id="review-language-detect" name="elemName">
									<input type="hidden" value="<%=(String)request.getAttribute("catName")%>" id="review-language-detect" name="catName">
									<li class="review-element">
										<div id="field-star-rating">
											<fieldset>
												<legend class="offscreen">Rating</legend>
												<ul>
													<li class="voteable-attribute clearfix">
														<label class="formField">
														Rating &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														</label>
														<label>
														<input type="radio" value="1" name="rating" id="av_box:rating:True">
														<span><i>Methinks not&nbsp;</i></span>
														</label>
														<label>
														<input type="radio" value="2" name="rating" id="av_box:rating:False">
														<span><i>I've experienced better&nbsp;</i></span>
														</label>
														<label>
														<input type="radio" value="3" name="rating" id="av_box:rating:False">
														<span><i>OK&nbsp;</i></span>
														</label>
														<label>
														<input type="radio" value="4" name="rating" id="av_box:rating:False">
														<span><i>I'm a fan&nbsp;</i></span>
														</label>
														<label>
														<input type="radio" value="5" name="rating" id="av_box:rating:False">
														<span><i>As good as it gets&nbsp;</i></span>
														</label>
													</li>
												</ul>
											</fieldset>
										</div>
									</li>
									<li class="review-element">
										<label for="review-text" class="primary">
										<strong>        Your review
										</strong>
										<br>
										<br>
										</label>
										<div class="primary">
											<textarea onkeyup="javascript:yelp.ui.widget.countChars(this.form.comment,5000);" onkeydown="javascript:yelp.ui.widget.countChars(this.form.comment,5000);" name="comment" id="review-text" class="form400 default_valued_text_field" rows="8" cols="40" style="height: 115px;"></textarea>
											<p id="comment_footer">
												<em id="update_status">
												<span style="text-transform:capitalize">
												<span id="auto_label">Auto-</span>saved
												</span>
												<span id="update_time">6 minutes ago</span><span id="update_timestamp"></span>.
												</em>
											</p>
											<script type="text/javascript">yelp.init.wrapper("yelp.writeareview.initReviewForm", {"defaultTime": "h:mm tt", "firstTime": true, "descriptions": ["Roll over stars, then click to rate.", "Eek! Methinks not.", "Meh. I've experienced better.", "A-OK.", "Yay! I'm a fan.", "Woohoo! As good as it gets!"], "timeFormat": "h:mm tt", "selectedRating": 0, "saveDraft": true, "saveDraftPostURL": "/writeareview/save_draft/eXprR2i_W8UKMmsYYbZFQQ"});</script>
										</div>
									</li>
								</ul>
								<div class="clearfix" id="review_rate_form_footer">
									<p class="clearfix">
										<a href="Categories?categoryName=<%=request.getAttribute("catName")%>">Cancel</a>
										<input type="hidden" id="rating-form-action" value="submit" name="action_submit">
										<button class="ybtn ybtn-primary ybtn-small" value="submit" type="submit" id="review-submit-button"><span>Post</span></button>
									</p>
									<div class="loading-message">
										<span class="throbber">Posting your review…</span>
									</div>
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