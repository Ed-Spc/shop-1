<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<t:layout title="收货地址列表">
  <table>
    <tr><th>姓名</th><th>手机号</th><th>地址</th></tr>
    <c:forEach items="${shippingAddresses}" var="shippingAddress">
      <tr>
        <td>${shippingAddress.name}</td>
        <td>${shippingAddress.phoneNumber}</td>
        <td>${shippingAddress.address}</td>
      </tr>
    </c:forEach>
  </table>
</t:layout>