<?
if (isset($_GET["logout"])) {
	//setcookie("logout",1,time()+3600);
	setcookie("login",$_POST["login"],time()-3600);
	setcookie("pass" ,$_POST["pass"],time()-3600);
	header("Location: index.php");
}



if (isset($_POST["submit"])) 
	if ($_POST["login"]=="admin" && $_POST["pass"]=="123") {
		setcookie("login",$_POST["login"],time()+3600);
		setcookie("pass" ,$_POST["pass"],time()+3600);
		//setcookie("logout",0,time()+3600);
		header("Location: index.php");
		}
		else
		{
			setcookie("login","Данные не верны",time()+3600);
			header("Location: index.php");
		}


if ($_COOKIE["login"]=="admin" && $_COOKIE["pass"]=="123")
	echo "Добро пожаловать {$_COOKIE['login']} <a href='?logout=1'>Выход</a><br>";
else
echo
"<form action=\"\" method=\"POST\">
	Пожалуйста авторизируйтесь: Логин
	<input type=\"text\" name=\"login\" value=\"\">
	Пароль
	<input type=\"password\" name=\"pass\" value=\"\">
	<input type=\"submit\" name=\"submit\" value=\"Войти\">
</form>";

	