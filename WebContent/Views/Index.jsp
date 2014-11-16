<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta content="QR Code scanner" name="description">
    <meta content="qrcode,qr code,scanner,barcode,javascript" name="keywords">
    <meta content="English" name="language">
    <meta content="Lazar Laszlo (c) 2011" name="copyright">
    <meta content="1 Days" name="Revisit-After">
    <meta content="index, follow" name="robots">
    <meta content="text/html; charset=utf-8" http-equiv="Content-type">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Scan Your Badge</title>
    <style type="text/css">
body{
    width:100%;
    text-align:center;
    /* background-repeat: no-repeat;
    background-image: url("../images/it_security_services.jpg"); */
    }
    img{
    border:0;
    }
    #main{
    margin: 15px auto;
    /* background:white; */
    overflow: auto;
    width: 100%;
   /*  background-repeat: no-repeat; */
    background-image: url("../images/Digital-security-access-denied-multi-coloured-locks.jpg");
    }
    #header{
    background:white;
    margin-bottom:15px;
    }
    #mainbody{
    background-repeat: no-repeat;
    background-image: url("../images/security-access.jpg");
    /* background: white; */
    width:100%;
    /* display:none; */
    }
    #footer{
    background:white;
    }
    #v{
    width:320px;
    height:240px;
    }
    #qr-canvas{
    display:none;
    }
    #qrfile{
    width:320px;
    height:240px;
    }
    #mp1{
    text-align:center;
    font-size:35px;
    }
    #imghelp{
    position:relative;
    left:0px;
    top:-160px;
    z-index:100;
    font:18px arial,sans-serif;
    background:#f0f0f0;
    margin-left:35px;
    margin-right:35px;
    padding-top:10px;
    padding-bottom:10px;
    border-radius:20px;
    }
    .selector{
    margin:0;
    padding:0;
    cursor:pointer;
    margin-bottom:-5px;
    }
    #outdiv
    {
    width:320px;
    height:240px;
    border: solid;
    border-width: 3px 3px 3px 3px;
    }
    #result{
    border: solid;
    border-width: 1px 1px 1px 1px;
    padding:20px;
    width:70%;
    }

    ul{
    margin-bottom:0;
    margin-right:40px;
    }
    li{
    display:inline;
    padding-right: 0.5em;
    padding-left: 0.5em;
    font-weight: bold;
    border-right: 1px solid #333333;
    }
    li a{
    text-decoration: none;
    color: black;
    }

    #footer a{
    color: black;
    }
    .tsel{
    padding:0;
     background-repeat: no-repeat;
    background-image: url("../images/security-access.jpg");
    }

    </style>
    <script src="../stylesheets/llqrcode.js" type="text/javascript"></script>
<!-- <script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script> -->

    <script src="../stylesheets/webqr.js" type="text/javascript"></script>
    <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-24451557-1']);
    _gaq.push(['_trackPageview']);

    (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

    </script>
</head>

<body>
    <div id="main">
        <div id="mainbody">
            <table border="0" class="tsel" width="25%" align="center">
                <tr>
                    <td align="center" valign="top" width="50%">
                        <table border="0" class="tsel">
                            <tr>
                                <td><img align="left" class="selector" id=
                                "webcamimg" onclick="setwebcam()" src=
                                "vid.png" alt="Scan"></td>

                                <td><img align="right" class="selector" id=
                                "qrimg" onclick="setimg()" src="cam.png"></td>
                            </tr>

                            <tr>
                                <td align="center" colspan="2">
                                    <div id="outdiv"></div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td align="center" colspan="3"></td>
                </tr>

                <tr>
                    <td align="center" colspan="3">
                        <div id="result"></div>
                    </td>
                </tr>
            </table>
        </div><br>
    </div><canvas height="600" id="qr-canvas" width="800"></canvas>
    <script type="text/javascript">
load();
    </script>
</body>
</html>