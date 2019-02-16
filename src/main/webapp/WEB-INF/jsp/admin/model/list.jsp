<%@ taglib prefix="o" uri="http://openkm.com/tags/utils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <jsp:include page="/header"/>
</head>
<body>
  <jsp:include page="/menu"/>
  <div class="container">
    <div class="jumbotron">
      <h2>List of models</h2>
      <table class="table">
        <c:forEach items="${modelFiles}" var="modelFile">
        <tr>
          <td>${modelFile}</td>
          <td><a class="btn btn-primary btn-sm" href="<c:url value="/admin/model/enableModel?modelFileName=${modelFile}" />" role="button">Enable</a></td>
        </tr>
        </c:forEach>
      </table>
    </div>
  </div>

</body>
</html>
