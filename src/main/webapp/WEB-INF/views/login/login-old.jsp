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
    <table width="942" cellpadding="4" cellspacing="0" style="page-break-before: auto; page-break-after: auto">
        <col width="279">
        <col width="22">
        <col width="261">
        <col width="105">
        <col width="235">
        <tr>
            <td colspan="5" width="934" valign="top" align="center" style="border: none; padding: 0cm">
                <h4 class="western"
                    style="margin-top: 0.2cm; font-variant: normal; letter-spacing: normal; font-style: normal">
                    <font color="#333333"><font face="Ubuntu"><font size="4" style="font-size: 16pt"><b>Zaloguj
                        się</b></font></font></font></h4>
            </td>
        </tr>
        <tr valign="top">
            <td width="279" style="border: none; padding: 0cm">
                <p style="margin-top: 0.2cm"><br/>

                </p>
            </td>
            <td width="22" style="border: none; padding: 0cm">
                <p><br/>

                </p>
            </td>
            <td width="261" style="border: none; padding: 0cm">
                <p><br/>

                </p>
            </td>
            <td width="105" style="border: none; padding: 0cm">
                <p><br/>

                </p>
            </td>
            <td width="235" style="border: none; padding: 0cm">
                <p><br/>

                </p>
            </td>
        </tr>
    </table>
    <form method="post" action="${pageContext.request.contextPath}/logging">
        <table>
            <tr valign="top">
                <td width="279" height="47"
                    style="border-top: none; border-bottom: none; border-left: none; border-right: 2.00pt solid #f58220; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0cm; padding-right: 0.05cm">
                    <p style="background: transparent"><br/>

                    </p>
                </td>
                <td width="22" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="261" style="border: none; padding: 0cm">
                    <p>Login:<br/>

                        <label>
                            <input type="text" name="login"/>
                        </label>
                    </p>
                </td>
                <td width="105" style="border: none; padding: 0">
                    <p><br/>

                    </p>
                </td>
                <td width="235" style="border: none; padding: 0">
                    <p><br/>

                    </p>
                </td>
            </tr>
            <tr valign="top">
                <td width="279"
                    style="border-top: none; border-bottom: none; border-left: none; border-right: 2.00pt solid #f58220; padding: 0 0.05cm 0 0;">
                    <p><br/>

                    </p>
                </td>
                <td width="22"
                    style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0; padding-bottom: 0.1cm; padding-left: 0; padding-right: 0">
                    <p><br/>

                    </p>
                </td>
                <td width="261"
                    style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p>Hasło:<br/>
                        <label>
                            <input type="password" name="password"/>
                        </label><br/>
                        <br/>

                    </p>
                </td>
                <td width="105"
                    style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <div align="left">
                        <br/>
                        <input type="submit" value="Zaloguj"
                               style="width: 2cm; height: 0.8cm; font-family: 'Ubuntu',sans-serif; font-size: 13pt"/>

                    </div>
                </td>
                <td width="235" style="border: none; padding: 0">
                    <p align="center"><br/>

                    </p>
                </td>
            </tr>
        </table>
    </form>
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
