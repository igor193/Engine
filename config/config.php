<?php
define('SITE_ROOT', "../");
define('WWW_ROOT', SITE_ROOT . '/public');

/* DB config */
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'infobiz');

define('DATA_DIR', SITE_ROOT . 'data');
define('LIB_DIR', SITE_ROOT . 'engine');
define('TPL_DIR', SITE_ROOT . 'templates');
define('TPL_DIR_PAGES', SITE_ROOT . 'templates/Pages');
define('TPL_DIR_ADMIN', SITE_ROOT . 'templates/Admin');

define('SITE_TITLE', 'VverViz_3_v.1');

require_once(LIB_DIR . '/db.php');
require_once(LIB_DIR . '/functions.php');
require_once(LIB_DIR . '/core.php');
require_once(LIB_DIR . '/log.php');
require_once(LIB_DIR . '/auth.php');

