<?php
//--------router---------------------------------------
function prepareVariables($page_name){
    $vars = [];
    switch ($page_name){
        case "index":        
            $vars[] = getNews();                       
            break;
        // case "ab_progect":        
        //     $vars = [];                       
        //     break;
        // case "rewiew":        
        //     $vars = [];                       
        //     break;
        // case "resoches":        
        //     $vars = [];                       
        //     break;
        // case "arhive":        
        //     $vars = [];                       
        //     break;         
        // case "newspage":
        //     $content = getNewsContent($_GET['id_news']);
        //     $vars["news_title"] = $content["news_title"];
        //     $vars["news_content"] = $content["news_content"];
        //     break;
        // case "form_admin":
        //     $vars = [];                       
        //     break;
        case "login":
                $vars = [];
                //require_once(LIB_DIR . '/auth.php');                       
                break;      
    }    
    return $vars;  
}
//---------end router--------------------------------------------------------

// if(isset($_POST["submit_admin"])) {
//     set_News();
//     header("Location: form_admin.html");
// }

if(isset($_POST["cancelbtn"])) header("Location: /");

function doFeedbackAction(&$vars) {
	$vars["response"] = "";
	$vars["action"] = "Отправить";
	$vars["edit_name"] = "";
	$vars["edit_message"] = "";
	
	if ($_GET["status"]=="ok") $vars["response"] = "Отзыв добавлен";	
	if ($_GET["status"]=="delete") $vars["response"] = "Отзыв удален";	
	if ($_GET["status"]=="edit") $vars["response"] = "Отзыв отредактирован";	
	
	if (isset($_POST['name'])) {
		if ($_REQUEST["send"]=="Править") {
			updateFeedback($_POST["idx"]);
		header("Location: /feedback/?status=edit");		
		}
		else {		
            setFeedback();
			header("Location: /feedback/?status=ok");	
		}
	}
	
	if (isset($_GET["action"])) {
		if ($_GET["action"]=="delete") {
			deleteFeedback($_GET["id"]);
			header("Location: /feedback/?status=delete");
		} elseif ($_GET["action"]=="edit") {
			$feed = getFeedback($_GET["id"]);
			$vars["edit_name"] = $feed["feedback_user"];
			$vars["edit_message"] = $feed["feedback_body"];
			$vars["action"] = "Править";
			$vars["id"] = $_GET["id"];
		}
		
	}
	

            $vars["feedbackfeed"] = getFeedbacksFeed();
}

//------CRUD-----------------------------------------------------

function updateFeedback($id) {
	$response = "";
    $db_link = getConnection();

    $feedback_user = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['name'])));
    $feedback_body = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['review'])));

    $sql = "UPDATE feedback SET feedback_user='{$feedback_user}', feedback_body='{$feedback_body}' WHERE id_feedback={$id}";
    $res = executeQuery($sql, $db_link);
}

function getFeedback($id) {
	$id = (int)$id;
	$sql = "SELECT * FROM feedback WHERE id_feedback={$id}";
	$news = getAssocResult($sql);

    $result = [];
    if(isset($news[0]))
        $result = $news[0];

    return $result;
}

function deleteFeedback($id) {
	$id = (int)$id;
	$sql = "DELETE FROM feedback WHERE id_feedback={$id}";
	executeQuery($sql);
}

function getNews(){
    $sql = "SELECT * FROM stoks WHERE id=1";    
    $news = getAssocResult($sql); 
    return $news;
}

function getNewsContent($id_news){
    $id_news = (int)$id_news;

    $sql = "SELECT * FROM news WHERE id_news = ".$id_news;
    $news = getAssocResult($sql);

    $result = [];
    if(isset($news[0]))
        $result = $news[0];

    return $result;
}

function getFeedbacksFeed(){
    $sql = "SELECT * FROM feedback ORDER BY id_feedback DESC";
    $feed = getAssocResult($sql);

    return $feed;
}

function set_News(){
    $response = "";
    
   $db_link = getConnection();

    $set_date = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['dataInfo'])));
    $set_topic = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['topic'])));
    $set_intro = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['intro'])));
    $set_worldInfo = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['worldInfo'])));
    $set_avtorName = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['avtorName'])));
    $set_avtorUrl = mysqli_real_escape_string($db_link, (string)htmlspecialchars(strip_tags($_POST['avtorUrl'])));

    $sql = "INSERT INTO `stoks`(`dataInfo`, `topic`, `intro`, `worldInfo`, `avtorName`, `avtorUrl`) VALUES ('{$set_date}', '{$set_topic}', '{$set_intro}', '{$set_worldInfo}', '{ $set_avtorName}', '{$set_avtorUrl}')";
    $res = executeQuery($sql, $db_link);

}
//------end CRUD------------------------------------------------------------------------------------------------

//функция возвращает массив меню
function getMenu(){      
    $sql = "SELECT `href`, `nameMenu` FROM `Menu`";    
    $menu = getAssocResult($sql);      
    return $menu;
}