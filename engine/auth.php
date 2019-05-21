<?
session_start();
Define ("SALT","234g53ggd344g");
if (isset($_POST["uname"])) {
	unset($_SESSION["login"]);
	unset($_SESSION["pass"]);
	setcookie("login");
	setcookie("pass");
	header("Location: /");
}

function checkPass($uname, $psw) {
	$connect = getConnection();
	$uname = mysqli_real_escape_string($connect, (string)htmlspecialchars(strip_tags($uname)));
	$psw = mysqli_real_escape_string($connect, (string)htmlspecialchars(strip_tags($psw)));	
	$sql = "select * from users where login = '{$uname}' and pass='{$psw}'";
	$res = mysqli_query($connect, $sql);
	return mysqli_num_rows($res)>0;
}

if (isset($_POST["logbtn"])) {
	
	if (checkPass($_POST["uname"],md5($_POST["psw"].SALT))) 
		{
			
			if (isset($_POST["check"])) {
				setcookie("uname",$_POST["uname"],time()+3600);
				setcookie("psw" ,md5($_POST["psw"].SALT),time()+3600);
			} 
			else {
				$_SESSION["uname"]=$_POST["uname"];
				$_SESSION["psw"]=md5($_POST["psw"].SALT);
			}
			

			header("Location: /form_admin/");
			
		}
		else
		{
			setcookie("uname","Данные не верны",time()+3600);
			header("Location: /login/");
		}
}

// if (checkPass($_SESSION["uname"],$_SESSION["psw"]) || checkPass($_COOKIE["uname"],$_COOKIE["psw"])){
//     //header("Location: /form_admin");	
// 	echo "Добро пожаловать {$_COOKIE['uname']}{$_SESSION["uname"]} <a href='?logout=1'>Выход</a><br>";
// }
// else
// 	header("Location: /login/");
