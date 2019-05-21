<?
session_start();
if (isset($_GET["logout"])) {
	unset($_SESSION["login"]);
	unset($_SESSION["pass"]);
	setcookie("login");
	setcookie("pass");
	header("Location: index.php");
}

function checkPass($login,$pass) {
	$connect = mysqli_connect("localhost","root","","shop");
	$login=strip_tags(mysqli_real_escape_string($connect,$login));
	$pass=strip_tags(mysqli_real_escape_string($connect,$pass));
	$sql = "select * from users where login = '{$login}' and pass='{$pass}'";
	$res = mysqli_query($connect,$sql);
	return mysqli_num_rows($res)>0;
}

if (isset($_POST["submit"])) {
	
	if (checkPass($_POST["login"],$_POST["pass"]))
		{
			if (isset($_POST["check"])) {
				setcookie("login",$_POST["login"],time()+3600);
				setcookie("pass" ,$_POST["pass"],time()+3600);
			} 
			else {
				$_SESSION["login"]=$_POST["login"];
				$_SESSION["pass"]=$_POST["pass"];
			}
			
			header("Location: index.php");
		}
		else
		{
			setcookie("login","Данные не верны",time()+3600);
			header("Location: index.php");
		}
}

if (checkPass($_SESSION["login"],$_SESSION["pass"]) || checkPass($_COOKIE["login"],$_COOKIE["pass"]))
	echo "Добро пожаловать {$_COOKIE['login']} <a href='?logout=1'>Выход</a><br>";
else
	echo
"<form action=\"\" method=\"POST\">
	Пожалуйста авторизируйтесь: Логин
	<input type=\"text\" name=\"login\" value=\"{$_COOKIE['login']}\">
	Пароль
	<input type=\"password\" name=\"pass\" value=\"{$_COOKIE['pass']}\">
	<input type=\"checkbox\" name=\"check\"> Запомнить
	<input type=\"submit\" name=\"submit\" value=\"Войти\">
</form>";
