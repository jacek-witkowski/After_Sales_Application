<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Logowanie</title>
    <meta name="generator" content="LibreOffice 6.0.7.3 (Linux)"/>
    <meta name="author" content="Jacek Witkowski"/>
    <meta name="created" content="2020-02-06T09:02:11.540334184"/>
    <meta name="changedby" content="Jacek Witkowski"/>
    <meta name="changed" content="2020-02-06T17:02:43.135678684"/>
    <style type="text/css">
        @page {
            size: landscape;
            margin: 2cm
        }

        p {
            margin-bottom: 0.25cm;
            line-height: 130%
        }

        td p {
            margin-bottom: 0cm;
            line-height: 130%
        }

        h4.cjk {
            font-family: "Noto Sans CJK SC"
        }

        h4.ctl {
            font-family: "Lohit Devanagari"
        }

        a:link {
            so-language: zxx
        }
    </style>
</head>
<body lang="pl-PL" bgcolor="#cccccc" dir="ltr">
<h4 class="western"><br/>
    <br/>

</h4>


<div style="text-align: center;">

    <h4><b>Zaloguj się</b></h4>

    <form:form modelAttribute="user" method="post" action="${pageContext.request.contextPath}/logging">
        <%--    <form action="${pageContext.request.contextPath}/logging" method="POST">--%>

        <p>Login:

                <%--                        <label>--%>
            <form:input path="login" type="text" size="19"
                        style="width: 5.6cm; height: 0.8cm; font-family: 'Ubuntu'; font-size: 14pt; font-weight: bold; background: #dddddd"/><br/>
            <br/>
            <form:errors path="login" cssClass="error"/>
                <%--                        </label>--%>
        </p>
        <br/>

        <p>Hasło:
                <%--                        <label>--%>
            <form:input path="password" type="password" size="19"
                        style="width: 5.6cm; height: 0.8cm; font-family: 'Ubuntu'; font-size: 14pt; font-weight: bold; background: #dddddd"/><br/>
            <br/>
            <form:errors path="password" cssClass="error"/>
                <%--                        </label><br/>--%>

        </p>
        <br/>
        <input type="submit" value="Zaloguj"/>


    </form:form>
</div>

<p><br/>
    <br/>

</p>
<p><br/>
    <br/>
    <br/>

</p>
<p style="margin-bottom: 0; line-height: 100%"><br/>

</p>
</body>
</html>
