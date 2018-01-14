<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/themes/ui-lightness/jquery-ui.css" rel="stylesheet" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JQuery Test</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="datePicker.css" type="text/css" rel="stylesheet" />
        <script type="text/javascript" src="jquery.js"></script>
        <script type="text/javascript" src="jquery-datepicker.js"></script>
        <script type="text/javascript">
            $(function()
            {
                $('#date-pick').datepicker({
                    showOn: "button",
                    dateFormat: "dd/mm/yy",
                    disabled: true,
                    buttonImage: "calendar.png",
                    buttonImageOnly: true
                });
            });
        </script>
    </head>
    <body>
        Enter your birthdate :
        <input name="date1" type="text" id="date-pick" size="10" maxlength="10" />
    </body>
</html>