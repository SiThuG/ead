<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : index
    Created on : Jun 9, 2010, 3:59:32 PM
    Author     : tgiunipero
--%>

<sql:query var="category" dataSource="jdbc/affablebean">
    SELECT * FROM category
</sql:query>

<div id="indexLeftColumn">
    <div id="welcomeText">
        <p>[ welcome text ]</p>
        <!-- test to access context parameters -->
        categoryImagePath: ${initParam.categoryImagePath}
        productImagePath: ${initParam.productImagePath}
    </div>
</div>

<div id="indexRightColumn">
    <c:forEach var="category" items="${category.rows}">
        <div class="categoryBox">
            <a href="category?${category.id}">

                <span class="categoryLabelText">${category.name}</span>

                <img src="${initParam.categoryImagePath}${category.name}.jpg"
                     alt="${category.name}">
            </a>
        </div>
    </c:forEach>
</div>