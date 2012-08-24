<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
      <title>Click me</title>
      <g:javascript base="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/" library="jquery.min"/>
      <g:javascript>
      $(document).ready(function(){
          $("#trigger").click(function(){
              $("#popup").load("ajaxListCountries",
                                function(){
                                    $(this).show();
                                }
              );
          });
      });
      </g:javascript>
      <style type="text/css">
          #popup {
              display: none; /* Hidden on ready */
              position: absolute;
              top: 0;
              left: 0;
              width: 100%;
              height: 100%;
              margin: 0 auto;
          }
          #popup .floater {
              position: relative;
              float: left;
              height: 50%;
              margin-bottom: -200px;
          }
          #popup .content {
              clear: both;
              position: relative;
              margin: 0 auto;
              width: 50%;
              height: 400px;
              background-color: #CCCCFF;
              padding: 15px;
              border: solid 1px #000000;
              overflow: auto;
          }
      </style>
  </head>
  <body>

      <div>
          <button id="trigger" name="trigger" type="button">Click me</button>
      </div>

      <div id="popup">
          Nothing to see here until $("#trigger").click()
      </div>

  </body>
</html>