<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" trimDirectiveWhitespaces="false" session="false" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="my" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<fmt:setBundle basename="Texts"/>
<my:pagetemplate title="Customers">
<jsp:attribute name="body">

    <h1>Customers</h1>

    <my:extraTag href="/customers/new" class="btn btn-default">
        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
        Add New Customer
    </my:extraTag>
    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Address</th>
            <th>Phone Number</th>
            <th><!--Button Column--></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customers}" var="customer">
            <tr onclick="window.location='/pa165/customers/detail/${customer.id}'" style="cursor: pointer;">
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.surname}"/></td>
                <td>
                    <c:out value="${customer.address.street} ${customer.address.number}, ${customer.address.city}"/>
                </td>
                <td><c:out value="${customer.phoneNumber}"/></td>
                <td>
                    <my:extraTag href="/customers/edit/${customer.id}" class='btn btn-primary'>
                        <span class="glyphicon glyphicon-edit">
                        </span> Edit
                    </my:extraTag>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</jsp:attribute>
</my:pagetemplate>
