<%-- 
    Document   : main
    Created on : Feb 22, 2017, 9:17:56 PM
    Author     : Dhenuka Bhargavi Rangam
--%>
<%-- Include tag is used to import header page --%>
<%@ include file="header.jsp" %>
<%-- Code to go back to Main page  --%>
<br>
<%-- Code to Display Reported Question--%>
<section class="participate">
    <a href="main.jsp?user=Hello,Kim" id="back_to_page">&laquo;Back to the Main Page</a>
    <br>
    <br>
    <table>
        <%--Column Names --%>
        <tr>
            <th>Report Date</th>
            <th>Report Question</th>
            <th>Report Status</th>		
        </tr>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var="study" items="${studiesReported}">
            <tr>
                <td>${study.dataCreated}</td>
                <td>${study.question}</td>
                <td>${study.status}</td>
            </tr>
        </c:forEach>
    </table>
</section>            
<%-- Include tag is used to import footer page --%>
<%@ include file="footer.jsp" %>