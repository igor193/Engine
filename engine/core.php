<?php
//Константы ошибок
define('ERROR_NOT_FOUND', 1);
define('ERROR_TEMPLATE_EMPTY', 2);

function renderMenu($templateContent) {
    $file_menu = TPL_DIR . "/" . "menu" . ".html";
    foreach(getMenu() as $key=>$value) {              
        $menu .= file_get_contents($file_menu);
            foreach($value as $key=>$value1){
                $m_key = '{{' . strtoupper($key) . '}}'; 
                $menu = str_replace($m_key, $value1, $menu);                
        }
    }
        $templateContent = str_replace('{{MENU}}', $menu, $templateContent);
    return $templateContent;
}

function renderPage($page_name, $variables = [])
{
    if ($page_name == "index" || $page_name == "login")
       $file = TPL_DIR . "/" . $page_name . ".tpl";
    else 
       $file = TPL_DIR_PAGES . "/" . $page_name . ".tpl";
    if (checkPass($_SESSION["uname"],$_SESSION["psw"]) || checkPass($_COOKIE["uname"],$_COOKIE["psw"])){
        if ($page_name == "index" || $page_name == "login")
           $file = TPL_DIR . "/" . $page_name . ".tpl";
        else 
           $file = TPL_DIR_PAGES . "/" . $page_name . ".tpl";
        if ($page_name == "form_admin")
           $file = TPL_DIR_ADMIN . "/" . $page_name . ".tpl";
    }

    if (!is_file($file)) {
      	echo 'Template file "' . $file . '" not found';
      	exit(ERROR_NOT_FOUND);
    }

    if (filesize($file) === 0) {
      	echo 'Template file "' . $file . '" is empty';
      	exit(ERROR_TEMPLATE_EMPTY);
    }

  
    if (empty($variables)) {
          $templateContent = file_get_contents($file);
          $templateContent = renderMenu($templateContent);
    }
    else {
      	$templateContent = file_get_contents($file);      
        $templateContent = pasteValues_1($variables, $page_name, $templateContent);
        $templateContent = renderMenu($templateContent);
    }

    return $templateContent;
}

function pasteValues_1($variables, $page_name, $templateContent){	
    foreach ($variables as $key => $value) {	
        if ($value != null) {                     
            $p_key = '{{' . strtoupper($key) . '}}'; 
            if(is_array($value)){                
                $result = "";
                foreach ($value as $value_key => $item){                  					
                       foreach($item as $item_key => $item_value){
                           $i_key = '{{' . strtoupper($item_key) . '}}';                                                  
                       $templateContent = str_replace($i_key, $item_value, $templateContent);                                            
                       $templateContent = str_replace('{{SITE_TITLE}}', SITE_TITLE, $templateContent); 
                       $templateContent = str_replace('{{DATE}}', date('Y'), $templateContent);	
                    }	                 				
                   $result .= $itemTemplateContent;
                }              
            }
            else				
                $result = $value;		
            $templateContent = str_replace($p_key, $result, $templateContent);
        }
    }
   
    return $templateContent;
}



