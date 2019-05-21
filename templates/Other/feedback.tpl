<html>
    <head>
        <meta charset="utf-8" />
    </head>
    <body>
        <form method="post">
            <p>Ваше имя:<br><input type="text" name="name" value="{{EDIT_NAME}}" /></p>
            <p>Комментарий:<br><input type="textbox" name="review" value="{{EDIT_MESSAGE}}" /></p>
			<input hidden type="text" name="idx" value="{{ID}}">
            <p><input type="submit" value="{{ACTION}}" name="send"/></p>
        </form>

        <div class="feedback_response">
            {{RESPONSE}}
        </div>

        <div class="feedback_feed">
            {{FEEDBACKFEED}}
        </div>
    </body>
</html>