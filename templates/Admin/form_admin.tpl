<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>InputInfo</title>
    </head>
    <body>
            <form method="POST">
                    <div class="container" style="background-color:#f1f1f1">    
                      <button name="logout" class="cancelbtn">logout</button>                          
                    </div> 
                  </form>
        <form action="index.php" method="POST">
                <label for="date"><b>Дата дня</b></label>
                <input type="date" placeholder="Enter Date" name="dataInfo" required><br>

                <label>
                        <span>Заголовок</span><br>
                        <textarea cols="120" rows="1" name="topic"></textarea>
                    </label><br>

                <label>
                        <span>Вводная часть:</span><br>
                        <textarea cols="120" rows="9" name="intro"></textarea>
                    </label><br>
           
            <!-- поле ввода с описанием -->
            <label>
                <span>Текст статьи:</span><br>
                <textarea cols="120" rows="20" name="worldInfo"></textarea>
            </label><br>

             <!-- поле ввода с описанием -->
             <label>
                    <span>Название источника:</span><br>
                    <textarea cols="40" rows="1" name="avtorName"></textarea>
                </label><br>

                <label>
                        <span>Адрес URL источника:</span><br>
                        <textarea cols="40" rows="1" name="avtorUrl"></textarea>
                    </label><br>

            <!-- кнопка отправки формы -->
            <input type="submit" name="submit_admin">            
        </form>
    </body>
</html>