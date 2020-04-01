<%--
  Created by IntelliJ IDEA.
  User: waclaw
  Date: 05.02.2020
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Dodany klient</title>
    <meta name="generator" content="LibreOffice 6.0.7.3 (Linux)"/>
    <meta name="author" content="Jacek Witkowski"/>
    <meta name="created" content="2020-02-06T09:02:11.540334184"/>
    <meta name="changedby" content="Jacek Witkowski"/>
    <meta name="changed" content="2020-02-06T14:37:45.378230963"/>
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
            margin-bottom: 0.50cm;
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
<body lang="pl-PL" bgcolor="#888a85" dir="ltr">
<h4 class="western"><br/>
    <br/>
</h4>
<dl>
    <dl>
        <dd>
            <table width="855" cellpadding="4" cellspacing="0" style="page-break-before: auto; page-break-after: auto">
                <col width="377">
                <col width="53">
                <col width="130">
                <col width="92">
                <col width="163">
                <tbody>
                <tr>
                    <td colspan="5" width="847" valign="top"
                        style="border-top: none; border-bottom: none; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.4cm; padding-left: 0cm; padding-right: 0cm">
                        <h4 class="western"
                            style="margin-top: 0.4cm; font-variant: normal; letter-spacing: normal; font-style: normal">
                            <font color="#333333"><font face="Ubuntu"><font size="4"
                                                                            style="font-size: 16pt"><b>${pageTitle}</b></font></font></font>
                        </h4>
                    </td>
                </tr>
                <tr></tr>
                </tbody>
                <tbody>
                <tr valign="top">
                    <td width="377" style="border: none; padding: 0cm">
                        <p style="margin-top: 0.4cm"><br/>

                        </p>
                    </td>
                    <td width="53" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td width="130" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td width="92" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td width="163" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                </tr>
                <tr valign="bottom">
                    <td colspan="2" width="437" height="100"
                        style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding: 0cm">
                        <p style="margin-top: 0.4cm"><font color="#333333"><font face="Ubuntu"><font size="4"
                                                                                                     style="font-size: 14pt"><b>${owner.name}</b></font></font></font>
                        </p>
                        <p style="margin-top: 0.4cm"><font color="#333333"><font face="Ubuntu"><font size="4"
                                                                                                     style="font-size: 14pt"><b><font
                                size="3" style="font-size: 13pt" style="line-height: 130%">ul.
                            ${owner.street} ${owner.bldgNumber}<br/>
                            ${owner.postalCode} ${owner.city}<br/>
                            ${owner.country}</font></b></font></font></font></p>
                    </td>
                    <td colspan="3" width="401" style="border: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt"><b>Osoba
                            kontaktowa:</b></font></font></font></p>
                    </td>
                </tr>
                <tr valign="top">
                    <td width="377" height="27"
                        style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt"><b>Tel.:
                            +48 ${owner.mainPhone}
                        </b></font></font></font></p>
                    </td>
                    <td width="53" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td colspan="3" width="401" style="border: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3"
                                                                           style="font-size: 13pt"><b>${owner.contactFirstName} ${owner.contactLastName}
                            - ${owner.contactPosition}</b></font></font></font></p>
                    </td>
                </tr>
                <tr valign="top">
                    <td width="377"
                        style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt">
                            <b>Faks: +48 ${owner.mainFax}</b></font></font></font></p>
                    </td>
                    <td width="53" style="border: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td colspan="3" width="401" style="border: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt">
                            <b>tel.: ${owner.contactPhone}</b></font></font></font></p>
                    </td>
                </tr>
                <tr valign="top">
                    <td width="377"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: 2.50pt solid #f58220; border-right: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt">
                            <b>e-mail: ${owner.mainEmail}</b></font></font></font></p>
                    </td>
                    <td width="53"
                        style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding: 0cm">
                        <p><br/>

                        </p>
                    </td>
                    <td colspan="3" width="401"
                        style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding: 0cm">
                        <p><font color="#333333"><font face="Ubuntu"><font size="3" style="font-size: 13pt">
                            <b>e-mail: ${owner.contactEmail}</b></font></font></font></p>
                    </td>
                </tr>
                <tr></tr>
                </tbody>
                <tbody>
                <tr>
                    <td colspan="5" width="847" height="60" valign="top"
                        style="border-top: 2.50pt solid #f58220; border-bottom: none; border-left: none; border-right: none; padding-top: 0.1cm; padding-bottom: 0cm; padding-left: 0cm; padding-right: 0cm">
                        <div align="center">
                            <p><font color="#333333"><font face="Ubuntu"><font size="3"
                                                                               style="font-size: 13pt"><b><br/>
                                <a href="${pageContext.request.contextPath}/machine/add?ownerId=${owner.id}"><input
                                        type="button" value="Przypisz maszyny"
                                        style="width: 4.15cm; height: 1.2cm; font-size: 13pt; background: #dddddd"/></a>
                                <a href="${pageContext.request.contextPath}/owner/add"><input type="button"
                                                                                              value="Dodaj następnego klienta"
                                                                                              style="width: 4.97cm; height: 1.2cm; font-size: 13pt; background: #dddddd"/></a>
                                <a href="${pageContext.request.contextPath}/owner/edit?ownerId=${owner.id}"><input
                                        type="button" value="Edytuj"
                                        style="width: 2.5cm; height: 1.2cm; font-size: 13pt; background: #dddddd"/></a>
                                <a href=${pageContext.request.contextPath}/owner/all><input type="button"
                                                                                            value="Powrót"
                                                                                            style="width: 2.5cm; height: 1.2cm; font-size: 13pt; background: #dddddd"/></a></b></font></font></font>
                            </p>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
    </dl>
</dl>
<p><br/>
    <br/>

</p>
<p><br/>
    <br/>
    <br/>

</p>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>
</body>
</html>
<%--<br/>--%>
<%--<h4>Dodany klient:</h4>--%>
<%--<hr/>--%>

<%--<table>--%>

<%--    <thead>--%>
<%--    <tr>--%>
<%--        <td><b>${owner.name}</b></td>--%>
<%--    </tr>--%>
<%--    </thead>--%>

<%--    <tr>--%>
<%--        <td>${owner.street} ${owner.bldgNumber}<br/>--%>
<%--            ${owner.postalCode} ${owner.city}, ${owner.country}<br/>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>tel.: ${owner.mainPhone}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>faks: ${owner.mainFax}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>email: ${owner.mainEmail}</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td><b>Osoba do kontaktu:</b><br/>--%>
<%--            ${owner.contactFirstName} ${owner.contactLastName} - ${owner.contactPosition}<br/>--%>
<%--            tel. ${owner.contactPhone}<br/>--%>
<%--            e-mail ${owner.contactEmail}--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</table>--%>