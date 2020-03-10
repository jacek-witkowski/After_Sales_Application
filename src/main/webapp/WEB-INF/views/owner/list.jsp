<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Klienci</title>
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

<dl>
    <dl>
        <dd>
            <table width="855" cellpadding="2" cellspacing="0"
                   style="background: transparent; page-break-before: auto; page-break-after: auto; page-break-inside: auto">
                <col width="227">
                <col width="154">
                <col width="190">
                <col width="120">
                <col width="144">

                <tbody>
                <tr>
                    <td colspan="5" width="851" height="34" valign="top" style="border: none; padding: 0cm">
                        <h4 class="western" align="center"
                            style="margin-top: 0.2cm; font-variant: normal; letter-spacing: normal; font-style: normal">
                            <font color="#333333"><font face="Ubuntu"><font size="4" style="font-size: 16pt"><b>Lista
                                klientów</b></font></font></font></h4>
                    </td>
                </tr>
                </tbody>
            </table>
            <form action="${pageContext.request.contextPath}/owner/get" method="get">
                <table>
                    <tbody>
                    <tr>
                        <td colspan="5" width="851" height="34" valign="top" style="border: none; padding: 0cm">
                            <div align="center">
                                <h4 class="western"
                                    style="margin-top: 0.2cm; font-variant: normal; letter-spacing: normal; font-style: normal">
                                    <font color="#333333"><font face="Ubuntu"><font size="4" style="font-size: 16pt"><b><font
                                            size="3" style="font-size: 12pt">Pokaż tylko zawierających w nazwie</font>
                                        <input name="name" type="text" size="23"
                                               style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu',sans-serif; font-size: 13pt; background: #dddddd"/><br/>

                                        <input type="submit" name="find" value="Znajdź"
                                               style="width: 1.78cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 12pt"></b></font></font></font>
                                </h4>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="5" width="851" height="22" style="border: none; padding: 0cm">
                            <div align="center">
                                <h4 class="western"
                                    style="margin-top: 0cm; font-variant: normal; letter-spacing: normal; font-style: normal">
                                    <font color="#333333">
                                        <label>
                                            <input type="radio" name="kindOfClients" value="all"
                                                   style="width: 2.49cm; height: 0.5cm; font-family: 'Ubuntu'; font-size: 12pt; font-weight: bold">
                                            Wszyscy</label>
                                        <input type="radio" name="kindOfClients" value="activeOnly" checked="checked"
                                               style="width: 2.49cm; height: 0.5cm; font-family: 'Ubuntu'; font-size: 12pt; font-weight: bold">Aktywni
                                        <input type="radio" name="kindOfClients" value="notActiveOnly"
                                               style="width: 2.92cm; height: 0.5cm; font-family: 'Ubuntu'; font-size: 12pt; font-weight: bold">Nieaktywni
                                    </font>
                                </h4>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
            <table>
                <tbody>

                <tr>
                    <td colspan="5" width="850" valign="top" style="border: none; padding: 0cm">
                        <h4 class="western" style="margin-top: 0cm"><br/>

                        </h4>
                    </td>
                </tr>
                <tr>
                    <td width="226" height="24"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: 2.00pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0.05cm; padding-right: 0cm">
                        <p align="center" style="margin-top: 0.1cm"><font color="#333333"><font face="Ubuntu"><font
                                size="3" style="font-size: 12pt"><b>NazwaKlienta</b></font></font></font></p>
                    </td>
                    <td width="154"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                        <p align="center" style="margin-top: 0.1cm"><font color="#333333"><font face="Ubuntu"><font
                                size="3" style="font-size: 12pt"><b>Miejscowość</b></font></font></font></p>
                    </td>
                    <td width="190"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                        <p align="center" style="margin-top: 0.1cm"><font color="#333333"><font face="Ubuntu"><font
                                size="3" style="font-size: 12pt"><b>Adres</b></font></font></font></p>
                    </td>
                    <td width="119"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                        <p align="center" style="margin-top: 0.1cm"><font color="#333333"><font face="Ubuntu"><font
                                size="3" style="font-size: 12pt"><b>Telefon</b></font></font></font></p>
                    </td>
                    <td width="145"
                        style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                        <p align="center" style="margin-top: 0.1cm"><font color="#333333"><font face="Ubuntu"><font
                                size="3" style="font-size: 12pt"><b>Email</b></font></font></font></p>
                    </td>
                </tr>


                <%-- Odtąd w pętli --%>

                <c:forEach items="${owners}" var="item">


                    <tr>
                        <td width="226" height="4" style="border: none; padding: 0cm">
                            <p align="center"><br/>

                            </p>
                        </td>
                        <td width="154" style="border: none; padding: 0cm">
                            <p align="center"><br/>

                            </p>
                        </td>
                        <td width="190" style="border: none; padding: 0cm">
                            <p align="center"><br/>

                            </p>
                        </td>
                        <td width="119" style="border: none; padding: 0cm">
                            <p align="center"><br/>

                            </p>
                        </td>
                        <td width="145" style="border: none; padding: 0cm">
                            <p align="center"><br/>

                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td width="226" height="24"
                            style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: 2.00pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0.05cm; padding-right: 0cm">
                            <p align="center" style="margin-top: 0.1cm"><font face="Ubuntu"><font size="3"
                                                                                                  style="font-size: 13pt">
                                <a href="${pageContext.request.contextPath}/client/get?clientId=${item.id}"
                                   name="clientDetails"><font size="3" style="font-size: 12pt">
                                        ${item.name}</font></a></font></font></p>
                        </td>
                        <td width="154"
                            style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                            <p align="center" style="margin-top: 0.1cm"><font face="Ubuntu">${item.city}</font></p>
                        </td>
                        <td width="190"
                            style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                            <p align="center" style="margin-top: 0.1cm"><font
                                    face="Ubuntu">${item.street} ${item.bldgNumber}</font></p>
                        </td>
                        <td width="119"
                            style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                            <p align="center" style="margin-top: 0.1cm"><font face="Ubuntu">${item.mainPhone}</font></p>
                        </td>
                        <td width="145"
                            style="border-top: none; border-bottom: 2.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.05cm; padding-left: 0cm; padding-right: 0cm">
                            <p align="center" style="margin-top: 0.1cm"><font face="Ubuntu">${item.mainEmail}</font></p>
                        </td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>
        </dd>
    </dl>

</dl>

</body>
</html>
<%--<a href=${pageContext.request.contextPath}/home>Powrót</a>--%>