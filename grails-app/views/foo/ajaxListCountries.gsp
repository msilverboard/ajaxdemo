<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
      <title>Countries</title>
  </head>
  <body>
  <div class="floater">&nbsp;</div>
  <div class="content">
      <g:form action="handleSubmit">
          <h1>Please select a country:</h1>
          <g:each in="${countries}" var="countryName">
              <g:radio value="${countryName}" name="country"/>${countryName}<br/>
          </g:each>
          <g:submitButton name="submit" value="Submit"/>
      </g:form>
  </div>
  </body>
</html>