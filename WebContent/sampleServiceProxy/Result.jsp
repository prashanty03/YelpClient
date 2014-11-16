<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceProxyid" scope="session" class="connection.ServiceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleServiceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleServiceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        connection.Service getService10mtemp = sampleServiceProxyid.getService();
if(getService10mtemp == null){
%>
<%=getService10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String name_1id=  request.getParameter("name18");
            java.lang.String name_1idTemp = null;
        if(!name_1id.equals("")){
         name_1idTemp  = name_1id;
        }
        String description_2id=  request.getParameter("description20");
            java.lang.String description_2idTemp = null;
        if(!description_2id.equals("")){
         description_2idTemp  = description_2id;
        }
        String address_3id=  request.getParameter("address22");
            java.lang.String address_3idTemp = null;
        if(!address_3id.equals("")){
         address_3idTemp  = address_3id;
        }
        String categoryName_4id=  request.getParameter("categoryName24");
            java.lang.String categoryName_4idTemp = null;
        if(!categoryName_4id.equals("")){
         categoryName_4idTemp  = categoryName_4id;
        }
        java.lang.String addElement15mtemp = sampleServiceProxyid.addElement(name_1idTemp,description_2idTemp,address_3idTemp,categoryName_4idTemp);
if(addElement15mtemp == null){
%>
<%=addElement15mtemp %>
<%
}else{
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addElement15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
}
break;
case 26:
        gotMethod = true;
        String email_5id=  request.getParameter("email43");
            java.lang.String email_5idTemp = null;
        if(!email_5id.equals("")){
         email_5idTemp  = email_5id;
        }
        String password_6id=  request.getParameter("password45");
            java.lang.String password_6idTemp = null;
        if(!password_6id.equals("")){
         password_6idTemp  = password_6id;
        }
        vo.UserVO login26mtemp = sampleServiceProxyid.login(email_5idTemp,password_6idTemp);
if(login26mtemp == null){
%>
<%=login26mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isAdmin:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typeisAdmin29 = login26mtemp.getIsAdmin();
        String tempResultisAdmin29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisAdmin29));
        %>
        <%= tempResultisAdmin29 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typepassword31 = login26mtemp.getPassword();
        String tempResultpassword31 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword31));
        %>
        <%= tempResultpassword31 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typelastName33 = login26mtemp.getLastName();
        String tempResultlastName33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName33));
        %>
        <%= tempResultlastName33 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">email:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typeemail35 = login26mtemp.getEmail();
        String tempResultemail35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeemail35));
        %>
        <%= tempResultemail35 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typefirstName37 = login26mtemp.getFirstName();
        String tempResultfirstName37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName37));
        %>
        <%= tempResultfirstName37 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastLogin:</TD>
<TD>
<%
if(login26mtemp != null){
java.lang.String typelastLogin39 = login26mtemp.getLastLogin();
        String tempResultlastLogin39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastLogin39));
        %>
        <%= tempResultlastLogin39 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(login26mtemp != null){
%>
<%=login26mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 47:
        gotMethod = true;
        String username_7id=  request.getParameter("username50");
            java.lang.String username_7idTemp = null;
        if(!username_7id.equals("")){
         username_7idTemp  = username_7id;
        }
        java.lang.String getPassword47mtemp = sampleServiceProxyid.getPassword(username_7idTemp);
if(getPassword47mtemp == null){
%>
<%=getPassword47mtemp %>
<%
}else{
        String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getPassword47mtemp));
        %>
        <%= tempResultreturnp48 %>
        <%
}
break;
case 52:
        gotMethod = true;
        String name_8id=  request.getParameter("name55");
            java.lang.String name_8idTemp = null;
        if(!name_8id.equals("")){
         name_8idTemp  = name_8id;
        }
        java.lang.String deleteElement52mtemp = sampleServiceProxyid.deleteElement(name_8idTemp);
if(deleteElement52mtemp == null){
%>
<%=deleteElement52mtemp %>
<%
}else{
        String tempResultreturnp53 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteElement52mtemp));
        %>
        <%= tempResultreturnp53 %>
        <%
}
break;
case 57:
        gotMethod = true;
        String name_9id=  request.getParameter("name60");
            java.lang.String name_9idTemp = null;
        if(!name_9id.equals("")){
         name_9idTemp  = name_9id;
        }
        String description_10id=  request.getParameter("description62");
            java.lang.String description_10idTemp = null;
        if(!description_10id.equals("")){
         description_10idTemp  = description_10id;
        }
        java.lang.String addCategory57mtemp = sampleServiceProxyid.addCategory(name_9idTemp,description_10idTemp);
if(addCategory57mtemp == null){
%>
<%=addCategory57mtemp %>
<%
}else{
        String tempResultreturnp58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addCategory57mtemp));
        %>
        <%= tempResultreturnp58 %>
        <%
}
break;
case 64:
        gotMethod = true;
        String name_11id=  request.getParameter("name67");
            java.lang.String name_11idTemp = null;
        if(!name_11id.equals("")){
         name_11idTemp  = name_11id;
        }
        java.lang.String deleteCategory64mtemp = sampleServiceProxyid.deleteCategory(name_11idTemp);
if(deleteCategory64mtemp == null){
%>
<%=deleteCategory64mtemp %>
<%
}else{
        String tempResultreturnp65 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteCategory64mtemp));
        %>
        <%= tempResultreturnp65 %>
        <%
}
break;
case 69:
        gotMethod = true;
        String name_12id=  request.getParameter("name72");
            java.lang.String name_12idTemp = null;
        if(!name_12id.equals("")){
         name_12idTemp  = name_12id;
        }
        String description_13id=  request.getParameter("description74");
            java.lang.String description_13idTemp = null;
        if(!description_13id.equals("")){
         description_13idTemp  = description_13id;
        }
        String address_14id=  request.getParameter("address76");
            java.lang.String address_14idTemp = null;
        if(!address_14id.equals("")){
         address_14idTemp  = address_14id;
        }
        String oldName_15id=  request.getParameter("oldName78");
            java.lang.String oldName_15idTemp = null;
        if(!oldName_15id.equals("")){
         oldName_15idTemp  = oldName_15id;
        }
        java.lang.String updateElement69mtemp = sampleServiceProxyid.updateElement(name_12idTemp,description_13idTemp,address_14idTemp,oldName_15idTemp);
if(updateElement69mtemp == null){
%>
<%=updateElement69mtemp %>
<%
}else{
        String tempResultreturnp70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateElement69mtemp));
        %>
        <%= tempResultreturnp70 %>
        <%
}
break;
case 80:
        gotMethod = true;
        String name_16id=  request.getParameter("name83");
            java.lang.String name_16idTemp = null;
        if(!name_16id.equals("")){
         name_16idTemp  = name_16id;
        }
        String description_17id=  request.getParameter("description85");
            java.lang.String description_17idTemp = null;
        if(!description_17id.equals("")){
         description_17idTemp  = description_17id;
        }
        String categoryName_18id=  request.getParameter("categoryName87");
            java.lang.String categoryName_18idTemp = null;
        if(!categoryName_18id.equals("")){
         categoryName_18idTemp  = categoryName_18id;
        }
        java.lang.String updateCategory80mtemp = sampleServiceProxyid.updateCategory(name_16idTemp,description_17idTemp,categoryName_18idTemp);
if(updateCategory80mtemp == null){
%>
<%=updateCategory80mtemp %>
<%
}else{
        String tempResultreturnp81 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateCategory80mtemp));
        %>
        <%= tempResultreturnp81 %>
        <%
}
break;
case 89:
        gotMethod = true;
        String categoryName_19id=  request.getParameter("categoryName92");
            java.lang.String categoryName_19idTemp = null;
        if(!categoryName_19id.equals("")){
         categoryName_19idTemp  = categoryName_19id;
        }
        vo.ElementVO[] getElementList89mtemp = sampleServiceProxyid.getElementList(categoryName_19idTemp);
if(getElementList89mtemp == null){
%>
<%=getElementList89mtemp %>
<%
}else{
        String tempreturnp90 = null;
        if(getElementList89mtemp != null){
        java.util.List listreturnp90= java.util.Arrays.asList(getElementList89mtemp);
        tempreturnp90 = listreturnp90.toString();
        }
        %>
        <%=tempreturnp90%>
        <%
}
break;
case 94:
        gotMethod = true;
        String elementName_20id=  request.getParameter("elementName101");
            java.lang.String elementName_20idTemp = null;
        if(!elementName_20id.equals("")){
         elementName_20idTemp  = elementName_20id;
        }
        String email_21id=  request.getParameter("email103");
            java.lang.String email_21idTemp = null;
        if(!email_21id.equals("")){
         email_21idTemp  = email_21id;
        }
        String rating_22id=  request.getParameter("rating105");
        int rating_22idTemp  = Integer.parseInt(rating_22id);
        String comment_23id=  request.getParameter("comment107");
            java.lang.String comment_23idTemp = null;
        if(!comment_23id.equals("")){
         comment_23idTemp  = comment_23id;
        }
        vo.StatusVO addReview94mtemp = sampleServiceProxyid.addReview(elementName_20idTemp,email_21idTemp,rating_22idTemp,comment_23idTemp);
if(addReview94mtemp == null){
%>
<%=addReview94mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messgge:</TD>
<TD>
<%
if(addReview94mtemp != null){
java.lang.String typemessgge97 = addReview94mtemp.getMessgge();
        String tempResultmessgge97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemessgge97));
        %>
        <%= tempResultmessgge97 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isSuccessful:</TD>
<TD>
<%
if(addReview94mtemp != null){
java.lang.Boolean typeisSuccessful99 = addReview94mtemp.getIsSuccessful();
        String tempResultisSuccessful99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisSuccessful99));
        %>
        <%= tempResultisSuccessful99 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 109:
        gotMethod = true;
        String elementName_24id=  request.getParameter("elementName112");
            java.lang.String elementName_24idTemp = null;
        if(!elementName_24id.equals("")){
         elementName_24idTemp  = elementName_24id;
        }
        vo.ReviewVO[] getReviews109mtemp = sampleServiceProxyid.getReviews(elementName_24idTemp);
if(getReviews109mtemp == null){
%>
<%=getReviews109mtemp %>
<%
}else{
        String tempreturnp110 = null;
        if(getReviews109mtemp != null){
        java.util.List listreturnp110= java.util.Arrays.asList(getReviews109mtemp);
        tempreturnp110 = listreturnp110.toString();
        }
        %>
        <%=tempreturnp110%>
        <%
}
break;
case 114:
        gotMethod = true;
        vo.CategoryVO[] getCategoryList114mtemp = sampleServiceProxyid.getCategoryList();
if(getCategoryList114mtemp == null){
%>
<%=getCategoryList114mtemp %>
<%
}else{
        String tempreturnp115 = null;
        if(getCategoryList114mtemp != null){
        java.util.List listreturnp115= java.util.Arrays.asList(getCategoryList114mtemp);
        tempreturnp115 = listreturnp115.toString();
        }
        %>
        <%=tempreturnp115%>
        <%
}
break;
case 117:
        gotMethod = true;
        String firstName_25id=  request.getParameter("firstName124");
            java.lang.String firstName_25idTemp = null;
        if(!firstName_25id.equals("")){
         firstName_25idTemp  = firstName_25id;
        }
        String lastName_26id=  request.getParameter("lastName126");
            java.lang.String lastName_26idTemp = null;
        if(!lastName_26id.equals("")){
         lastName_26idTemp  = lastName_26id;
        }
        String email_27id=  request.getParameter("email128");
            java.lang.String email_27idTemp = null;
        if(!email_27id.equals("")){
         email_27idTemp  = email_27id;
        }
        String pwd_28id=  request.getParameter("pwd130");
            java.lang.String pwd_28idTemp = null;
        if(!pwd_28id.equals("")){
         pwd_28idTemp  = pwd_28id;
        }
        vo.StatusVO signUp117mtemp = sampleServiceProxyid.signUp(firstName_25idTemp,lastName_26idTemp,email_27idTemp,pwd_28idTemp);
if(signUp117mtemp == null){
%>
<%=signUp117mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">messgge:</TD>
<TD>
<%
if(signUp117mtemp != null){
java.lang.String typemessgge120 = signUp117mtemp.getMessgge();
        String tempResultmessgge120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemessgge120));
        %>
        <%= tempResultmessgge120 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">isSuccessful:</TD>
<TD>
<%
if(signUp117mtemp != null){
java.lang.Boolean typeisSuccessful122 = signUp117mtemp.getIsSuccessful();
        String tempResultisSuccessful122 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeisSuccessful122));
        %>
        <%= tempResultisSuccessful122 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>