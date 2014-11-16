<%@page import="vo.UserVO"%>
<%@page import="vo.CategoryVO"%>
<html lang="en" class="js" xmlns:fb="http://www.facebook.com/2008/fbml">
	<!--<![endif]-->
	<head>
		<style type="text/css">.gm-style .gm-style-cc span,.gm-style .gm-style-cc a,.gm-style .gm-style-mtc div{font-size:10px}</style>
		<style type="text/css">@media print {  .gm-style .gmnoprint, .gmnoprint {    display:none  }}@media screen {  .gm-style .gmnoscreen, .gmnoscreen {    display:none  }}</style>
		<style type="text/css">.gm-style{font-family:Roboto,Arial,sans-serif;font-size:11px;font-weight:400;text-decoration:none}</style>
		<title>Categories | Yelp</title>
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
		<script>
			(function() {
			    var main = null;
			
			    var main=function(){(function(d,e,j,h,f,c,b){d.GoogleAnalyticsObject=f;d[f]=d[f]||function(){(d[f].q=d[f].q||[]).push(arguments)},d[f].l=1*new Date();c=e.createElement(j),b=e.getElementsByTagName(j)[0];c.async=1;c.src=h;b.parentNode.insertBefore(c,b)})(window,document,"script","//www.google-analytics.com/analytics.js","ga")};
			
			    if (main === null) {
			        throw 'invalid inline script, missing main declaration.';
			    }
			    main();
			})();
		</script>
		<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/maps-api-v3/api/js/17/17/%7Bcommon,map,util,marker%7D.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/maps-api-v3/api/js/17/17/%7Bonion%7D.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/maps-api-v3/api/js/17/17/%7Bcontrols,stats%7D.js"></script>
		<style type="text/css">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset&gt;div{overflow:hidden}.fb_link img{border:none}
			.fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_reset .fb_dialog_legacy{overflow:visible}.fb_dialog_advanced{padding:10px;-moz-border-radius:8px;-webkit-border-radius:8px;border-radius:8px}.fb_dialog_content{background:#fff;color:#333}.fb_dialog_close_icon{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif);cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{top:5px;left:5px;right:auto}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_close_icon:active{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent;_background-image:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yL/r/s816eWC-2sl.gif)}.fb_dialog_loader{background-color:#f2f2f2;border:1px solid #606060;font-size:24px;padding:20px}.fb_dialog_top_left,.fb_dialog_top_right,.fb_dialog_bottom_left,.fb_dialog_bottom_right{height:10px;width:10px;overflow:hidden;position:absolute}.fb_dialog_top_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 0;left:-10px;top:-10px}.fb_dialog_top_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -10px;right:-10px;top:-10px}.fb_dialog_bottom_left{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -20px;bottom:-10px;left:-10px}.fb_dialog_bottom_right{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ye/r/8YeTNIlTZjm.png) no-repeat 0 -30px;right:-10px;bottom:-10px}.fb_dialog_vert_left,.fb_dialog_vert_right,.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{position:absolute;background:#525252;filter:alpha(opacity=70);opacity:.7}.fb_dialog_vert_left,.fb_dialog_vert_right{width:10px;height:100%}.fb_dialog_vert_left{margin-left:-10px}.fb_dialog_vert_right{right:0;margin-right:-10px}.fb_dialog_horiz_top,.fb_dialog_horiz_bottom{width:100%;height:10px}.fb_dialog_horiz_top{margin-top:-10px}.fb_dialog_horiz_bottom{bottom:0;margin-bottom:-10px}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #3b5998;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title&gt;span{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{-webkit-transform:none;height:100%;margin:0;overflow:visible;position:absolute;top:-10000px;left:0;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{max-height:590px;min-height:590px;max-width:500px;min-width:500px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .45);position:absolute;left:0;top:0;width:100%;min-height:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_content .dialog_header{-webkit-box-shadow:white 0 1px 1px -1px inset;background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA), to(#2C4987));border-bottom:1px solid;border-color:#1d4088;color:#fff;font:14px Helvetica, sans-serif;font-weight:bold;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{-webkit-font-smoothing:subpixel-antialiased;height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:-webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6), color-stop(.5, #355492), to(#2A4887));border:1px solid #29447e;-webkit-background-clip:padding-box;-webkit-border-radius:3px;-webkit-box-shadow:rgba(0, 0, 0, .117188) 0 1px 1px inset, rgba(255, 255, 255, .167969) 0 1px 0;display:inline-block;margin-top:3px;max-width:85px;line-height:18px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{border:none;background:none;color:#fff;font:12px Helvetica, sans-serif;font-weight:bold;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #555;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f2f2f2;border:1px solid #555;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_button{text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}
			.fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_lift{z-index:1}.fb_hide_iframes iframe{position:relative;left:-10000px}.fb_iframe_widget_loader{position:relative;display:inline-block}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}.fb_iframe_widget_loader iframe{min-height:32px;z-index:2;zoom:1}.fb_iframe_widget_loader .FB_Loader{background:url(https://fbstatic-a.akamaihd.net/rsrc.php/v2/y9/r/jKEcVPZFk-2.gif) no-repeat;height:32px;width:32px;margin-left:-16px;position:absolute;left:50%;z-index:4}
			.fbpluginrecommendationsbarleft,.fbpluginrecommendationsbarright{position:fixed !important;bottom:0;z-index:999}.fbpluginrecommendationsbarleft{left:10px}.fbpluginrecommendationsbarright{right:10px}
		</style>
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
						</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%if(session.getAttribute("isAdmin").equals("Y")){%>
							<a id="header-sign-up" href="AddCategory?action=add" >Add Category</a>
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
								<form action="http://localhost:4300/deleteCategory" id="login-form" method="GET" name="login_form">
									<h2 align="center">Are you sure you want to delete this category?</h2>
									<p align="center"><button class="ybtn ybtn-primary ytype submit" value="submit" type="submit"><span>Yes</span></button> &nbsp;&nbsp;&nbsp;<a class="ybtn ybtn-primary header-button sign-up" id="header-sign-up" onclick = "document.getElementById('light3').style.display='none';document.getElementById('fade2').style.display='none'">No</a></p>
								</form>
							</div>
						</div>
							<div id="businessresults">
								<ul> <%CategoryVO[] categoryVOs = (CategoryVO[])request.getAttribute("categoryVOs"); %>
									<%if(categoryVOs!=null){ %>
									<% for(int i = 0;i < categoryVOs.length;i++) { %>
									<li data-key="1" class="clearfix business-summary" data-component-bound="true">
										<div class="war-businessresult businessresult">
											<div class="leftcol">
												<div >
													<a style="font-size:16px" href="Categories?categoryName=<%=categoryVOs[i].getName()%>"><%=i+1%>.&nbsp; <%=categoryVOs[i].getName()%>
													</a>
												</div>
											</div>
											<div class="leftcol">
												<div >
													Description :<%=categoryVOs[i].getDescription() %>
												</div>
											</div>
											<div class="leftcol">
												<div align="right">
													<%=categoryVOs[i].getCount() %> reviews
												</div>
											</div>
											<%if(session.getAttribute("isAdmin").equals("Y")){%>
											<div align="right">
												<a href="AddCategory?action=add" ><img src="../images/edit.png"/></a>&nbsp;&nbsp;
												<a href="javascript:void(0)" onclick = "document.getElementById('light3').style.display='block';document.getElementById('fade2').style.display='block'" ><img src="../images/delete.png"/></a>
											</div>
											<%}%>
										</div>
									</li>
									<%}%>
									<br clear="all">
									<%} else {%>
									<h2>No Categories defined</h2>
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
