<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Dodawanie / edycja klienta</title>
    <meta name="generator" content="LibreOffice 6.0.7.3 (Linux)"/>
    <meta name="author" content="Jacek Witkowski"/>
    <meta name="created" content="2020-02-06T09:02:11.540334184"/>
    <meta name="changedby" content="Jacek Witkowski"/>
    <meta name="changed" content="2020-02-06T10:47:03.924437256"/>
    <style type="text/css">
        @page {
            size: landscape;
            margin: 2cm
        }

        p {
            margin-bottom: 0.25cm;
            line-height: 115%
        }

        h4.cjk {
            font-family: "Ubuntu", sans-serif
        }

        h4.ctl {
            font-family: "Ubuntu", sans-serif
        }

        td p {
            margin-bottom: 0cm
        }

        a:link {
            so-language: zxx
        }

        .error {
            color: red;
        }
    </style>
</head>
<body lang="pl-PL" bgcolor="#8c8d8b" dir="ltr">
<h4 class="western"><br/>
    <br/>

</h4>
<form:form modelAttribute="owner" method="POST">
    <center>
        <table width="88%" cellpadding="4" cellspacing="0" style="page-break-before: auto">
            <col width="58*">
            <col width="58*">
            <col width="58*">
            <col width="30*">
            <col width="51*">
            <tbody>
            <tr>
                <td colspan="5" width="100%" valign="top"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <h4 class="western" style="margin-top: 0.2cm"><font color="#333333"><span
                            style="font-variant: normal"><font face="Ubuntu"><font size="4" style="font-size: 16pt">
    <span style="letter-spacing: normal"><span style="font-style: normal"><b>${pageTitle}</b>
    </span></span></font></font></span></font></h4>
                </td>
            </tr>
            <tr></tr>
            </tbody>
            <tbody>
            <tr valign="top">
                <td width="23%" style="border: none; padding: 0cm">
                    <p style="margin-top: 0.2cm"><br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
            </tr>
                <%--            <br/>--%>
                <%--            <h4>Dodawanie nowego klienta</h4><br/>--%>
                <%--            <hr/>--%>
            <tr valign="top">
                <td width="23%"
                    style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p style="margin-top: 0.2cm"><font color="#333333">
                        <font face="Ubuntu">Nazwa firmy</font><br/>
                        <form:input path="name" type="text" size="19"
                                    style="width: 5.6cm; height: 0.8cm; font-family: 'Ubuntu'; font-size: 14pt; font-weight: bold; background: #dddddd"/><br/>
                    </font><br/>
                        <form:errors path="name" cssClass="error"/>
                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><form:hidden path="id"/><br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
            </tr>
            <tr valign="top">
                <td width="23%" height="47"
                    style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p style="background: transparent"><font color="#333333"><font face="Ubuntu">Miasto:<br/>
                    </font><form:input path="city" type="text" size="23"
                                       style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font><br/>
                        <form:errors path="city" cssClass="error"/>


                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><font color="#333333"><font face="Ubuntu">Ulica:</font><br/>
                        <form:input path="street" type="text" size="23"
                                    style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font><br/>
                        <form:errors path="street" cssClass="error"/>


                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><font color="#333333"><font face="Ubuntu">Oznaczenie
                        budynku:</font><br/>
                        <form:input path="bldgNumber" type="text" size="23"
                                    style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font><br/>
                        <form:errors path="bldgNumber" cssClass="error"/>


                    </p>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><a name="postalCode1"></a><font color="#333333"><font face="Ubuntu">Kod
                        pocztowy:<br/>
                        <form:input path="postalCode" type="text" placeholder="00-000" size="7" maxlength="6"
                                    style="width: 1.92cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>

                    </font></font>
                        <form:errors path="postalCode" cssClass="error"/><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0">
                    <p><a name="country1"></a><font color="#333333"><font face="Ubuntu">Kraj:<br/>
                    </font></font>
                        <form:select path="country" size="1"
                                     style="width: 4.9cm; height: 0.8cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd">
                            <option selected="selected">Polska</option>
                            <option>Białoruś</option>
                            <option>Estonia</option>
                            <option>Litwa</option>
                            <option>Łotwa</option>
                            <option>Ukraina</option>
                        </form:select>
                        <br/>
                        <form:errors path="country" cssClass="error"/><br/>
                        <br/>

                    </p>
                </td>
            </tr>
            <tr valign="top">
                <td width="23%"
                    style="border-top: none; border-bottom: 1.00pt solid #f58220; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p><font color="#333333"><font face="Ubuntu">Telefon
                        ogólny:<br/>
                    </font><font face="Ubuntu">+48 </font><form:input path="mainPhone" type="text" size="16"
                                                                      style="width: 4cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                            <form:errors path="mainPhone" cssClass="error"/>

                </td>
                <td width="23%"
                    style="border-top: none; border-bottom: 1.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><a name="mainFax1"></a><font color="#333333"><font face="Ubuntu">Faks
                        ogólny:</font><br/>
                        <font face="Ubuntu"><font size="3" style="font-size: 13pt">+48</font></font><font face="Ubuntu">
                        </font><form:input path="mainFax" type="text" size="16"
                                           style="width: 4cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="mainFax" cssClass="error"/>
                        <br/>

                    </p>
                </td>
                <td width="23%"
                    style="border-top: none; border-bottom: 1.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><a name="mainEmail1"></a><font color="#333333"><font face="Ubuntu">E-mail
                        ogólny:</font><br/>
                        <form:input path="mainEmail" type="text" size="23"
                                    style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="mainEmail" cssClass="error"/><br/>
                        <br/>

                    </p>
                </td>
                <td width="12%"
                    style="border-top: none; border-bottom: 1.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="148"
                    style="border-top: none; border-bottom: 1.00pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <div align="center">
                        <p><font color="#333333"><font face="Ubuntu">Aktywny</font><font face="Ubuntu">:<br/>
                        </font><form:checkbox path="active" checked="checked"
                                              style="width: 0.4cm; height: 0.4cm; color: #333333; font-family: 'Ubuntu'; font-size: 13pt"/></font>
                        </p>
                    </div>
                </td>
            </tr>
            <tr valign="top">
                <td colspan="3" width="68%"
                    style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p><font color="#333333"><font face="Ubuntu"><font size="4" style="font-size: 14pt">
                        <b>Główna osoba kontaktowa</b></font></font></font></p>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
            </tr>
            <tr valign="top">
                <td width="23%"
                    style="border-top: none; border-bottom: none; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p><font color="#333333"><font face="Ubuntu">Imię:</font><br/>
                        <form:input path="contactFirstName" type="text" size="16"
                                    style="width: 4cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="contactFirstName" cssClass="error"/>
                        <br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><a name="contactFirstName2"></a><a name="contactLastName1"></a>
                        <font color="#333333"><font face="Ubuntu">Nazwisko:</font><br/>
                            <form:input path="contactLastName" type="text" size="23"
                                        style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu', sans-serif; font-size: 13pt; background: #dddddd"/><br/>
                        </font>
                        <form:errors path="contactLastName" cssClass="error"/>
                        <br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><a name="contactPosition1"></a><font color="#333333"><font face="Ubuntu">Stanowisko:</font><br/>
                        <form:input path="contactPosition" type="text" size="23"
                                    style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu',sans-serif; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="contactPosition" cssClass="error"/><br/>
                        <br/>

                    </p>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
            </tr>
            <tr valign="top">
                <td width="23%"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: 2.50pt solid #f58220; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0.1cm; padding-right: 0cm">
                    <p><a name="contactPhone1"></a><font color="#333333"><font face="Ubuntu">Telefon:</font><br/>
                        <font face="Ubuntu"><font size="3" style="font-size: 13pt">+48</font></font><font face="Ubuntu">
                        </font><form:input path="contactPhone" type="text" size="16"
                                           style="width: 4cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="contactPhone" cssClass="error"/>
                        <br/>

                    </p>
                </td>
                <td width="23%"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><a name="contactEmail1"></a><font color="#333333"><font face="Ubuntu">E-mail:</font><br/>
                        <form:input path="contactEmail" type="text" size="23"
                                    style="width: 5.6cm; height: 0.6cm; font-family: 'Ubuntu'; font-size: 13pt; background: #dddddd"/><br/>
                    </font>
                        <form:errors path="contactEmail" cssClass="error"/>
                        <br/>

                    </p>
                </td>
                <td width="23%"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="12%"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%"
                    style="border-top: none; border-bottom: 2.50pt solid #f58220; border-left: none; border-right: none; padding-top: 0cm; padding-bottom: 0.1cm; padding-left: 0cm; padding-right: 0cm">
                    <p><br/>

                    </p>
                </td>
            </tr>
            <tr></tr>
            </tbody>
            <tbody>
            <tr valign="top">
                <td width="23%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="23%" style="border: none; padding: 0cm">
                    <p align="center" style="margin-bottom: 0cm"><br/>

                    </p>
                    <div align="center">
                        <p><a href="${pageContext.request.contextPath}/client/all"><input type="button" name="cancel"
                                                                                          value="Anuluj"
                                                                                          style="width: 2.5cm; height: 1.2cm; font-size: 13pt; background: #dddddd">
                        </a></p>
                    </div>
                </td>
                <td width="12%" style="border: none; padding: 0cm">
                    <p><br/>

                    </p>
                </td>
                <td width="20%" style="border: none; padding: 0cm">
                    <p align="center" style="margin-bottom: 0cm"><br/>

                    </p>
                    <div align="center">
                        <p><font color="#333333"><input type="submit" value="Zapisz"
                                                        style="width: 2.5cm; height: 1.2cm; font-size: 13pt; background: #dddddd"></font>
                        </p>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </center>
</form:form>
<p style="margin-bottom: 0cm; line-height: 100%"><br/>

</p>

</body>
</html>
